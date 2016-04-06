package csjobs.security;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import csjobs.model.User;

//@Service("authService")
@Component
public class AuthenticationSuccessHandler extends
    SavedRequestAwareAuthenticationSuccessHandler {

	private boolean appli=false;


    @Override
    public void onAuthenticationSuccess( HttpServletRequest request,
        HttpServletResponse response, Authentication authentication )
        throws ServletException, IOException
    {
        User user = (User) authentication.getPrincipal();
        logger.info( user.getUsername() + " signed in from "
            + request.getRemoteAddr() );

        RequestCache requestCache = new HttpSessionRequestCache();
        SavedRequest savedRequest = requestCache.getRequest( request, response );
        if( savedRequest != null )
        {
            super.onAuthenticationSuccess( request, response, authentication );
            return;
        }

        if (user.getRoles().contains("ROLE_ADMIN"))
        
        getRedirectStrategy().sendRedirect( request, response , "/admin.html" );
        
        else if (user.getRoles().contains("ROLE_REVIEWER"))
            
        getRedirectStrategy().sendRedirect( request, response , "/reviewer.html" );
        
        else  
        {
        getRedirectStrategy().sendRedirect( request, response , "/applicant.html" );
        }
        
        
    }

}
