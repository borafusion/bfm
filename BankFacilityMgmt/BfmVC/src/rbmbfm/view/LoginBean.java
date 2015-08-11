package rbmbfm.view;


import java.io.IOException;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;

import javax.security.auth.login.LoginException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import oracle.adf.controller.ControllerContext;
import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.binding.OperationBinding;

import weblogic.security.SimpleCallbackHandler;
import weblogic.security.services.Authentication;

import weblogic.servlet.security.ServletAuthentication;

public class LoginBean {
    
    private String userName;
    private String passward;
    
    public LoginBean() {
        super();
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setPassward(String passward) {
        this.passward = passward;
    }

    public String getPassward() {
        return passward;
    }
    

    
    public void doLogin(ActionEvent event) {
         FacesContext fctx = FacesContext.getCurrentInstance();
         ExternalContext ectx = fctx.getExternalContext();
         HttpServletRequest request = (HttpServletRequest)ectx.getRequest();
         CallbackHandler handler = new SimpleCallbackHandler(this.userName,this.passward.getBytes());
         Subject sub;
         try {
             sub = Authentication.login(handler);
             ServletAuthentication.runAs(sub, request);
             ServletAuthentication.generateNewSessionID(request);
             String successUrl = "/adfAuthentication?success_url=/faces/home.jspx";
             HttpServletResponse response = (HttpServletResponse)fctx.getExternalContext().getResponse();
             RequestDispatcher dispatcher = request.getRequestDispatcher(successUrl);
             dispatcher.forward(request, response);                                                            
             fctx.responseComplete();
             } 
          catch (Exception e) {
             e.printStackTrace(); //Handle Exception according to applicaion standard
         }
     }
}
