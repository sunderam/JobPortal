<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Profile"%>
<%@page import="dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.poi.hssf.usermodel.*"%><%@page
	import="java.io.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	
	ProfileDao dao = new ProfileDao();
	List<Profile> profileList = dao.getProfile();


	// create a small spreadsheet
		  HSSFWorkbook wb = new HSSFWorkbook();
		  HSSFSheet sheet = wb.createSheet("Excel Sheet"); 
		  
		  HSSFRow rowhead = sheet.createRow((short)0);
		  rowhead.createCell((short)0).setCellValue("FULL NAME");
		  rowhead.createCell((short)1).setCellValue("GENDER");
		  rowhead.createCell((short)2).setCellValue("ADDRESS");
		  rowhead.createCell((short)3).setCellValue("CURRENT CITY");
		  rowhead.createCell((short)4).setCellValue("SSC MARKS");
		  rowhead.createCell((short)5).setCellValue("SSC YOP");
		  rowhead.createCell((short)6).setCellValue("HSC YOP");
		  rowhead.createCell((short)7).setCellValue("DEGREE");
		  rowhead.createCell((short)8).setCellValue("DEGREE MARKS");
		  rowhead.createCell((short)9).setCellValue("DEGREE YOP");
		  rowhead.createCell((short)10).setCellValue("DEGREE AGGREGATE");
		  rowhead.createCell((short)11).setCellValue("COLLEGE");
		  rowhead.createCell((short)12).setCellValue("BRANCH");
		  rowhead.createCell((short)13).setCellValue("COURSE");
		  rowhead.createCell((short)14).setCellValue("EXPERIANCE");
		  rowhead.createCell((short)15).setCellValue("PREVIOUS JOB");
		  rowhead.createCell((short)16).setCellValue("CURRENT CTC");
		  
		  HSSFRow row = sheet.createRow((short)1);
		  int i = 1;
		  for (Profile profile : profileList) {
			  row = sheet.createRow((short)i++);
			  System.out.println(profile.getFullName());
			  row.createCell((short)0).setCellValue(profile.getFullName());
			  row.createCell((short)1).setCellValue(profile.getGender());
			  row.createCell((short)2).setCellValue(profile.getAddress());
			  row.createCell((short)3).setCellValue(profile.getCurrentCity());
			  row.createCell((short)4).setCellValue(profile.getSscPercentage());
			  row.createCell((short)5).setCellValue(profile.getSscYearOfPassing());
			  row.createCell((short)6).setCellValue(profile.getHscPercentage());
			  row.createCell((short)7).setCellValue(profile.getHscYearOfPassing());
			  row.createCell((short)8).setCellValue(profile.getDegree());
			  row.createCell((short)9).setCellValue(profile.getDegreeAggregate());
			  row.createCell((short)10).setCellValue(profile.getDegreeYearOfPassing());
			  row.createCell((short)11).setCellValue(profile.getCollegeName());
			  row.createCell((short)12).setCellValue(profile.getBranch());
			  row.createCell((short)13).setCellValue(profile.getCourse());
			  row.createCell((short)14).setCellValue(profile.getExperiance());
			  row.createCell((short)15).setCellValue(profile.getJobTitle());
			  row.createCell((short)16).setCellValue(profile.getCurrentCTC());
			  
		  }
	
	
	// write it as an excel attachment
	ByteArrayOutputStream outByteStream = new ByteArrayOutputStream();
	wb.write(outByteStream);
	byte [] outArray = outByteStream.toByteArray();
	response.setContentType("application/ms-excel");
	response.setContentLength(outArray.length);
	response.setHeader("Expires:", "0"); // eliminates browser caching
	response.setHeader("Content-Disposition", "attachment; filename=AllStudents.xls");
	OutputStream outStream = response.getOutputStream();
	outStream.write(outArray);
	outStream.flush();

%>


