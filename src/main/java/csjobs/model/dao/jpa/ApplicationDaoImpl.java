package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import csjobs.model.Application;
import csjobs.model.File;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.ApplicationDao;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Application getApplication( Long id )
    {
        return entityManager.find( Application.class, id );
    }
    
    
    @Override
    public List<Application> getApplicant( Long id )
    {
    	//Authentication authentication ;
    	//User user=(User) authentication.getPrincipal();
    	String query = "from Application where job.id = :id   ";

        List<Application> results = entityManager
            .createQuery( query, Application.class )
            .setParameter( "id", id )
            .getResultList();
        //return (Application) results;
		return results;
    }

    @Override
    public Application getApplication( Job job, User applicant )
    {
        String query = "from Application where job = :job and applicant = :applicant";

        List<Application> results = entityManager
            .createQuery( query, Application.class )
            .setParameter( "job", job )
            .setParameter( "applicant", applicant )
            .getResultList();
        return results.size() == 0 ? null : results.get( 0 );
    }

    @Override
    @Transactional
    public Application saveApplication( Application application )
    {
        return entityManager.merge( application );
    }

	@Override
	@Transactional
	public File saveFile(File file) {
		// TODO Auto-generated method stub
		return entityManager.merge( file );
	}

	@Override
	public File getName(Application application) {
		String query = "select name from File f join Application app where f.owner.id=app.applicant.id";

        	File result = entityManager
            .createQuery( query, File.class )
            .setParameter( "application", application )
            //.setParameter( "applicant", applicant )
            .getSingleResult();
        return result;
	}


	@Override
	public List<Application> getApplicantAdmin(Long id) {
		String query = "from Application where job.id = :id  ";

        List<Application> results = entityManager
            .createQuery( query, Application.class )
            .setParameter( "id", id )
            .getResultList();
        //return (Application) results;
		return results;
	}

}
