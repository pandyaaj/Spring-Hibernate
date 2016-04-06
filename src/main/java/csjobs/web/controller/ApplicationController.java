package csjobs.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import csjobs.model.Job;
import csjobs.model.dao.ApplicationDao;
import csjobs.model.dao.JobDao;

@Controller
public class ApplicationController {
	
    @Autowired
    private ApplicationDao applicationDao;
    
    @Autowired
    private JobDao jobDao;

    @RequestMapping("/application/view.html")
    public String view( @RequestParam Long id, ModelMap models )
    {
        models.put( "application", applicationDao.getApplication( id ) );
        return "application/view";
    }

    @RequestMapping("/reviewer/viewApplicant.html")
    public String applicantview( @RequestParam Long id, ModelMap models,Authentication authentication )
    {	
    	//System.out.println(authentication.getPrincipal().toString());
    	/*
    	Job job= jobDao.getJob(id);
    	
    	if( jobDao.getJob(id).getCommitteeMembers().contains(authentication.getPrincipal()))
    	{
    	*/
        models.put( "application",  applicationDao.getApplicant(id));
    	
        return "reviewer/viewApplicant";
    }
    
    @RequestMapping("/admin/viewApplicant.html")
    public String applicantviewAdmin( @RequestParam Long id, ModelMap models )
    {
        models.put( "application", applicationDao.getApplicantAdmin(id) );
        return "admin/viewApplicant";
    }
}
