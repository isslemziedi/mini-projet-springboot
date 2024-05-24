package com.ufrcni.isslemproject.interceptors;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import com.ufrcni.isslemproject.models.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Component
public class AppInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("In Pre Handle Interceptor Method");

        //TODO: start check request uri
        if(request.getRequestURI().startsWith("/app")){
            //TODO:get session
            HttpSession session = request.getSession();
            //TODO:get token stored in session
            String token = (String) session.getAttribute("token");
            System.out.println(token);
            //TODO:get user object stored in session
            User user = (User)session.getAttribute("user");
            //TODO:check if Authenticated
            //boolean isAuthenticated = (boolean) session.getAttribute("authentication");
            //TODO: validate session attributes/objects
            if(token == null || user == null ){
                response.sendRedirect("/login");
                return false;
            }
        }
        //TODO: end check request uri
        return true;
    }


    //true
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("In Post Handle Interceptor Method");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("In After Completion Interceptor Method");
    }
}



















