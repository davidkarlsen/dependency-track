<%--
  ~ Copyright 2013 Axway
  ~
  ~ This file is part of OWASP Dependency-Track.
  ~
  ~ Dependency-Track is free software: you can redistribute it and/or modify it under the terms of the
  ~ GNU General Public License as published by the Free Software Foundation, either version 3 of the
  ~ License, or (at your option) any later version.
  ~
  ~ Dependency-Track is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
  ~ even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
  ~ Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License along with Dependency-Track.
  ~ If not, see http://www.gnu.org/licenses/.
  --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<html>
<head>
<title>Dependency Track</title>
<link href="<c:url value="/resources/style.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/resources/favicon.ico"/>" rel="shortcut icon"
	type="image/ico" />
</head>
<body>

	<h2>License List</h2>
	<a href="logout">logout</a>
	<div class="content">
		
		<h2>License for library</h2>
		<div>
			<c:if test="${!empty licenseList}">
				<table border=3>
					<tr>
						<th>License</th>
						<th>License File</th>


					</tr>
					<c:forEach items="${licenseList}" var="list">
						<tr>
							<td>${list.licensename}</td>
							<td><a href="/controller/downloadlicense/${appversionid}/${list.id}">Download</a></td>
	
						</tr>
					</c:forEach>

				</table>
			</c:if>
		</div>
	</div>
	<%@include file="/WEB-INF/views/templates/footer.jsp"%>
</body>
</html>

