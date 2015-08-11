package rbmbfm.view;


import java.io.IOException;

import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;

import javax.security.auth.login.FailedLoginException;
import javax.security.auth.login.LoginException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
    private String password;

    public LoginBean() {
        super();
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }


    public String doLogin() {
        /*
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
         }*/


        String un = userName;
        byte[] pw = password.getBytes();
        FacesContext ctx = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) ctx.getExternalContext().getRequest();
        CallbackHandler handler = new SimpleCallbackHandler(un, pw);
        try {
            Subject mySubject = Authentication.login(handler);
            ServletAuthentication.runAs(mySubject, request);
            ServletAuthentication.generateNewSessionID(request);
            //String loginUrl = "/adfAuthentication?success_url=/faces" + ctx.getViewRoot().getViewId();
            String loginUrl = "/adfAuthentication?success_url=/faces/home.jspx";
            HttpServletResponse response = (HttpServletResponse) ctx.getExternalContext().getResponse();
            sendForward(request, response, loginUrl);
        } catch (FailedLoginException fle) {
            FacesMessage msg =
                new FacesMessage(FacesMessage.SEVERITY_ERROR, "Incorrect Username or Password",
                                 "An incorrect Username or Password" + " was specified");
            ctx.addMessage(null, msg);
        } catch (LoginException le) {
            reportUnexpectedLoginError("LoginException", le);
        }
        return null;
    }

    private void reportUnexpectedLoginError(String errType, Exception e) {
        FacesMessage msg =
            new FacesMessage(FacesMessage.SEVERITY_ERROR, "Unexpected error during login",
                             "Unexpected error during login (" + errType + "), please consult logs for detail");
        FacesContext.getCurrentInstance().addMessage(null, msg);
        e.printStackTrace();
    }

    private void sendForward(HttpServletRequest request, HttpServletResponse response, String forwardUrl) {
        FacesContext ctx = FacesContext.getCurrentInstance();
        RequestDispatcher dispatcher = request.getRequestDispatcher(forwardUrl);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException se) {
            reportUnexpectedLoginError("ServletException", se);
        } catch (IOException ie) {
            reportUnexpectedLoginError("IOException", ie);
        }
        ctx.responseComplete();
    }
}
