<%@page import="dao.ProfileDao"%>
<%@page import="pojo.ProfessionalDetails"%>
<%@page import="pojo.EducationalDetails"%>
<%@page import="pojo.PersonalDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
       
				String user = session.getAttribute("uname").toString();
				ProfileDao dao = new ProfileDao();
				
    			String action = request.getParameter("action");
    			
    			if(action.equalsIgnoreCase("personal")){
    				System.out.println("In a Personal Block");
    				String name = request.getParameter("fname");
                    String dob = request.getParameter("dob");
                    String gender = request.getParameter("gender");
                    String address = request.getParameter("add");
                    String city = request.getParameter("city");
                    
                    PersonalDetails personal = new PersonalDetails();
                    personal.setFullName(name);
                    personal.setDateOfBirth(dob);
                    personal.setGender(gender);
                    personal.setAddress(address);
                    personal.setCurrentCity(city);
                    
                    
                    boolean status = dao.addPersonalDetails(personal, user);
                    if(status){
                    	request.setAttribute("msg","Personal details saved Successfull");
                    }else{
                    	request.setAttribute("err","Oops ! Something's wrong...");
                    }
                    RequestDispatcher view = request.getRequestDispatcher("Profile.jsp");
                    view.forward(request, response);
                    
                    
                    
    			}
    			else if(action.equalsIgnoreCase("educational")){
    				System.out.println("In a Edu Block");
    				String ssc = request.getParameter("ssc");
                    String sscyear = request.getParameter("sscyear");
                    String hsc = request.getParameter("hsc");
                    String hscyear = request.getParameter("hscyear");
                    String deg = request.getParameter("deg");
                    String degyear = request.getParameter("degyear");
                    String degagg = request.getParameter("degagri");
                    String collname = request.getParameter("collname");
                    String education = request.getParameter("edu");
                    String course = request.getParameter("course");
                    
                    EducationalDetails edu = new EducationalDetails();
                    edu.setSscPercentage(ssc);
                    edu.setSscYearOfPassing(sscyear);
                    edu.setHscPercentage(hsc);
                    edu.setHscYearOfPassing(hscyear);
                    edu.setDegree(deg);
                    edu.setDegreeAggregate(degagg);
                    edu.setDegreeYearOfPassing(degyear);
                    edu.setCollegeName(collname);
                    edu.setBranch(education);
                    edu.setCourse(course);
                    
                    boolean status = dao.addEducationalDetails(edu,user);
                    if(status){
                    	request.setAttribute("msg","Educational details saved Successfull");
                    }else{
                    	request.setAttribute("err","Oops ! Something's wrong...");
                    }
                    RequestDispatcher view = request.getRequestDispatcher("Profile.jsp");
                    view.forward(request, response);
                    
    			}
    			else if(action.equalsIgnoreCase("professional")){
    				System.out.println("In a Pro Block");
    				String expr = request.getParameter("experi");
                    String job = request.getParameter("job");
                    String ctc = request.getParameter("ctc");
                    
                    ProfessionalDetails pro = new ProfessionalDetails();
                    pro.setExperiance(expr);
                    pro.setJobTitle(job);
                    pro.setCurrentCTC(ctc);
                    
                    boolean status = dao.addProfessionalDetails(pro,user);
                    if(status){
                    	request.setAttribute("msg","Professional details saved Successfull");
                    }else{
                    	request.setAttribute("err","Oops ! Something's wrong...");
                    }
                    RequestDispatcher view = request.getRequestDispatcher("Profile.jsp");
                    view.forward(request, response);
    			}

        %>