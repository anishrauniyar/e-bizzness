package com.mypackage.com;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadModel {
	MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
