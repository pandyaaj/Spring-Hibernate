package csjobs.web.controller;

//import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import csjobs.model.Application;
import csjobs.model.Degree;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.File;
import csjobs.model.dao.ApplicationDao;
import csjobs.model.dao.JobDao;
import csjobs.model.dao.UserDao;

@Controller
@SessionAttributes("application")
public class ApplicationControllerS {

    @Autowired
    private JobDao jobDao;
    
    @Autowired
    private ApplicationDao applicationDao;

    @Autowired
    private UserDao user;
    
    @Autowired
    private ServletContext context;
    
    private java.io.File getFileDirectory() {
 		String path=context.getRealPath("/WEB-INF/files");
 		return new java.io.File(path);
 	}

    @RequestMapping(value = "/application/apply.html",
        method = RequestMethod.GET)
    public String apply( @RequestParam Long jobId, HttpSession session,
        ModelMap models,Authentication authentication )
    {
        Job job = jobDao.getJob( jobId );
        User applicant = (User) authentication.getPrincipal();
        Application application = applicationDao.getApplication( job,
            applicant );

        if( application != null && application.isSubmitted() )
        {
            models.put( "errorCode", "error.application.submitted" );
            return "error";
        }

        if( application == null )
            application = new Application( job, applicant );

        models.put( "application", application );
        return "application/apply";
    }

    @RequestMapping("/download.html")
    private String download( 
        HttpServletResponse response,@RequestParam String filename) throws ServletException, IOException
    {
	  
        response.setContentType( "application/octet-stream" );
        response.setHeader( "Content-Disposition",
            "attachment; filename="+filename);

        FileInputStream in = new FileInputStream(getFileDirectory()+"/"+filename);
        OutputStream out = response.getOutputStream();

        byte buffer[] = new byte[2048];
        int bytesRead;
        while( (bytesRead = in.read( buffer )) > 0 )
            out.write( buffer, 0, bytesRead );

        in.close();
        return null;
    }
    
    @RequestMapping(value = "/application/apply.html",
        method = RequestMethod.POST)
    public String apply( @ModelAttribute Application application,
        SessionStatus sessionStatus,@RequestParam MultipartFile cv1,@RequestParam MultipartFile ts,@RequestParam MultipartFile rs) throws IllegalStateException, IOException
    {
    	String append= application.getApplicant().getId()+"_"+application.getJob().getId()+"_";
    	
    	
    	cv1.transferTo(new java.io.File(getFileDirectory(),append+"CV_"+cv1.getOriginalFilename()));
    	rs.transferTo(new java.io.File(getFileDirectory(),append+"RS_"+rs.getOriginalFilename()));
    	ts.transferTo(new java.io.File(getFileDirectory(),append+"TS_"+ts.getOriginalFilename()));
    	
    	
    	Date date = new Date();
    	
    	File file = new File();
    	
    	if(!cv1.isEmpty()){
    		file.setDate(date);
    		file.setName(append+"CV_"+cv1.getOriginalFilename());
    		file.setSize(cv1.getSize());
    		file.setType(cv1.getContentType());
    		//file.setOwner(user.getUser(userid));
    		application.setCv(applicationDao.saveFile(file));
    	}
    	
    	if(!rs.isEmpty()){
    		file.setDate(date);
    		file.setName(append+"RS_"+rs.getOriginalFilename());
    		file.setSize(rs.getSize());
    		file.setType(rs.getContentType());
    		//file.setOwner();
    		application.setResearchStatement(applicationDao.saveFile(file));
    	}
    	
    	if(!ts.isEmpty()){
    		file.setDate(date);
    		file.setName(append+"TS_"+ts.getOriginalFilename());
    		file.setSize(ts.getSize());
    		file.setType(ts.getContentType());
    		//file.setOwner(user.getUser(userid));
    		application.setTeachingStatement(applicationDao.saveFile(file));
    	}
    	
    	application = applicationDao.saveApplication( application );
        sessionStatus.setComplete();
        return "redirect:addDegree.html?applicationId=" + application.getId();
        
    }

	@RequestMapping(value = "/application/addDegree.html",
        method = RequestMethod.GET)
    public String addDegree( @RequestParam Long applicationId, ModelMap models )
    {
        models.put( "application",
            applicationDao.getApplication( applicationId ) );
        models.put( "degree", new Degree() );
        return "application/addDegree";
    }
    

    @RequestMapping(value = "/application/addDegree.html",
        method = RequestMethod.POST)
    public String addDegree( @ModelAttribute Application application,
        @ModelAttribute Degree degree, SessionStatus sessionStatus )
    {
        application.getDegrees().add( degree );
        application = applicationDao.saveApplication( application );
        sessionStatus.setComplete();
        return "redirect:addDegree.html?applicationId=" + application.getId();
    }
 
}
