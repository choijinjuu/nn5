package com.semi.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	//파일명 변경
	@Override
	public File rename(File originFile) {
		
		String originName = originFile.getName();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()*90000)+10000;
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = "bookstore"+currentTime+ranNum+ext;
		
		return new File(originFile.getParent(),changeName);
	}
}