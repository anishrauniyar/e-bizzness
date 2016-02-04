package com.mypackage.com;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

import com.mypackage.com.FileUploadModel;

import org.springframework.validation.Errors;

public class FileUploadValidator implements Validator{
	 
	public boolean supports(Class clazz) {
		//just validate the FileUpload instances
		return FileUploadModel.class.isAssignableFrom(clazz);
	}
 
	public void validate(Object target, Errors errors) {
 
		FileUploadModel file = (FileUploadModel)target;
 
		if(file.getFile().getSize()==0){
			errors.rejectValue("file", "Please select a file to upload");
		}
	}

	@Override
	public ExecutableValidator forExecutables() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BeanDescriptor getConstraintsForClass(Class<?> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> T unwrap(Class<T> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validate(T arg0, Class<?>... arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validateProperty(T arg0,
			String arg1, Class<?>... arg2) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validateValue(Class<T> arg0,
			String arg1, Object arg2, Class<?>... arg3) {
		// TODO Auto-generated method stub
		return null;
	}
}
