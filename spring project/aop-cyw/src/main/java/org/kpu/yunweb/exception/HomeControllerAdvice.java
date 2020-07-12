package org.kpu.yunweb.exception;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@Component
@ControllerAdvice
public class HomeControllerAdvice {
	@ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public String handleException(Exception e) {
    	e.printStackTrace();
        return "";
    }
    
    @ExceptionHandler(DataNotFoundException.class)
    public String handleException(DataNotFoundException e) {
    	e.printStackTrace();
        return "login"; // /views/login.jsp 반환
    }
}
