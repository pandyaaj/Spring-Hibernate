package csjobs.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.mapping.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.WebApplicationContext;

import csjobs.model.Application;
import csjobs.model.Degree;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.JobDao;
import csjobs.model.dao.UserDao;
import csjobs.web.editor.UserPropertyEditor;

@Controller
public class JobController {

	@Autowired
	private JobDao jobDao;
	@Autowired
	private UserDao userDao;

	@RequestMapping({ "/index.html", "/job/list.html" })
	public String list(ModelMap models) {
		models.put("openJobs", jobDao.getOpenJobs());
		return "job/list";
	}

	@RequestMapping("/job/view.html")
	public String view(@RequestParam Long id, ModelMap models) {
		models.put("job", jobDao.getJob(id));
		return "job/view";
	}

	@RequestMapping(value = "/admin/addjob.html", method = RequestMethod.GET)
	public String addJob(ModelMap models) {
		
		
		List<User> user = userDao.getUser();

		List<User> reviewer = new ArrayList<User>();

		for (int i = 0; i < user.size(); i++) {
			if (user.get(i).isReviewer()) {
				reviewer.add(user.get(i));

				// models.put("reviewers", user);
			}
		}

		// System.out.println(reviewer.size());

		models.put("job", new Job());
		models.put("reviewers", reviewer);
		return "admin/addjob";
	}

	@RequestMapping(value = "/admin/addjob.html", method = RequestMethod.POST)
	public String addJob(@ModelAttribute Job job, SessionStatus sessionStatus,
			@RequestParam Long rev_id, HttpServletRequest request) {
		String a[] = request.getParameterValues("reviewer2");
		List<User> rev = new ArrayList<User>();
		// User mem= userDao.getUser(id);
		// userDao.getUser(id);

		// mem.add(request.getParameterValues("reviewer2"));
		// if(a != null){
		for (int i = 0; i < a.length; i++) {
			System.out.println(a[i]);
			rev.add(userDao.getUser(a[i]));
			System.out.println("add "+rev);
			// System.out.println(mem.getFirstName());
			// rev.add(mem);
			// }
		}

		// System.out.println(mem.getFirstName());
		rev.add(userDao.getUser(rev_id));
		job.setCommitteeChair(userDao.getUser(rev_id));
		job.setCommitteeMembers(rev);

		jobDao.saveJob(job);
		return "redirect:../admin.html";
	}

	@RequestMapping(value = "/admin/editJob.html", method = RequestMethod.GET)
	public String editJob(ModelMap models, @RequestParam long id) {
		List<User> user = userDao.getUser();

		List<User> reviewer = new ArrayList<User>();

		for (int i = 0; i < user.size(); i++) {
			if (user.get(i).isReviewer()) {
				reviewer.add(user.get(i));

				// models.put("reviewers", user);
			}
		}

		// System.out.println(reviewer.size());

		models.put("reviewers", reviewer);
		models.put("job", jobDao.getJob(id));
		
		return "admin/editJob";
	}

	@RequestMapping(value = "/admin/editJob.html", method = RequestMethod.POST)
	public String editJob(@ModelAttribute Job job, SessionStatus sessionStatus) {
		jobDao.saveJob(job);
		sessionStatus.setComplete();
		return "redirect:../admin.html";
	}

	@Autowired
    private WebApplicationContext context;

    @InitBinder
    public void initBinder( WebDataBinder binder )
    {
        binder.registerCustomEditor( User.class,
            (UserPropertyEditor) context.getBean( "userPropertyEditor" ) );
        binder.registerCustomEditor( Date.class,
            new CustomDateEditor( new SimpleDateFormat( "dd/MM/yyyy" ), true ) );
    }
}
