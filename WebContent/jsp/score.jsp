<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="pojo.Score"%>
<%@page import="pojo.Register"%>
<%@page import="dao.RegisterDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
					<%
						String username = session.getAttribute("uname").toString();
						RegisterDao dao = new RegisterDao();
						Register user = dao.getUserByUsername(username);
					%>
			
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-3">
						<div style="background-color:gray;color:white;height:280px;padding:10px;">
							<img alt="text" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGgAAABoCAMAAAAqwkWTAAAAMFBMVEXk5ueutLersbTW2Nrn6erIzM64vcC1ur2xt7nN0NLEyMrc3+Dg4+S+w8XR1NbY29xL/fbPAAACFUlEQVRoge2YyXLEIAxEWWTAZvH//20MmTiJY0AeBJUDfUml5vBKLRnUMDY1NTU1NTU11UHw+gN9KS4sXmujlV931o8lPReCf0pwvbguKNjVF+RkLT1A2wWTUGYnLgqsueFEFHFR1txiImkbw4kkOvdcgRPdoyKBKnEOkqQhwXo/B98yJBzmKhgq8+DuA7rKEoDKk/AqiWDy6h1Kcu0VaQxHhGaOxXA4982ggHKufcJRMxe9a25S5VQ4QbIVhONwsbYOOBbUejg4XIvaP9lhoGHWjRuGUeON/mBbLwrk4U1wyQ47VIddE7BgvDMEF9+oq3zccoJZt2i2YsQCSdChRLomsGtBRCvxuCV/XGwZF8QiKRctyZP5mLDMUvy/YvrEf5YeNHj/B42o9ESjtNZq6/pEw+CXejGYDevmU0FaKb8twTpiHByWec2FED8mL/4njF8tFQuY3IzInnbHLz60TwWwvUQ5J9DLptEAFlSV8qqrYdgPjEZu3oll3kRByBxvBQff2IvBVW67e5S2D1GAzMh/UQ+PP+TGfUdSDzr1lm2n8FdH7pJDK+BIyLW+IIEiYVNrkYRwD7NqI1TfkT1BQYd0ZXnFBryqhC+b1z4IJ6kYzYDIuChdAu10nOLLA3g6TjGoW8KCSl3C5WK8VM47QCV9vLLPn7TOFbyT1KBMRKNuUbZJx9dKLJ6Zhl1SK9Ojqampf64PJisXhCjLl70AAAAASUVORK5CYII=" width:50px;height:50px; style="padding-bottom:20px;">
							<p><%=user.getName()%></p>
							<p><%=user.getEmail()%></p>
							<p><%=user.getDegree()%></p>
							<p><%=user.getPassing() %></p>
						</div>
					</div>
					<div class="col-md-8">
						<div style="background-color:gray;color:white;height:280px;padding:40px;">
						<h4>Score</h4><hr>
						<%
						
						List<Score> scoreList = new ArrayList<Score>();
						dao.ScoreDao dao1 = new dao.ScoreDao();
						scoreList = dao1.getScoreByUser(username);
						
						%>
								<table class="table table-bordered">
								  <thead>
								    <tr>
								      <th scope="col">Subject</th>
								      <th scope="col">Score</th>
								      <th scope="col">Test Date</th>
								    </tr>
								  </thead>
								  <tbody>
								  <%
								  	for(int i = 0;i<scoreList.size();i++)
								  	{
								  %>
								    <tr>
								      <td><%=scoreList.get(i).getSubject() %></td>
								      <td><%=scoreList.get(i).getScore() %></td>
								      <td><%=scoreList.get(i).getTestDate() %></td>
								    </tr>
								    <%
								  	}
								    %>
								    </tbody>
								   </table>						
						</div>
					</div>
					<div class="col-md-1">
						<p></p>
					</div>
				</div>
			</div>
</body>
</html>