package csjobs.model.dao;

import java.util.List;

import csjobs.model.Application;
import csjobs.model.File;
import csjobs.model.Job;
import csjobs.model.User;

public interface ApplicationDao {

    Application getApplication( Long id );
    
    //Application getApplication( Long jobid );

    Application getApplication( Job job, User applicant );

    Application saveApplication( Application application );

    File saveFile( File file );
    
    File getName(Application application);

	List<Application> getApplicant(Long id);
	
	List<Application> getApplicantAdmin(Long id);
}
