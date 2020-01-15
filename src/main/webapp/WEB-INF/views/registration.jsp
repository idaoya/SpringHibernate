<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring + Hibernate</title>

<style>
.error {
	color: #ff0000;
}
</style>

</head>
<body>

	<h2>Registration Form</h2>

	<form:form method="POST" modelAttribute="employee">
		<form:input type="hidden" path="id" id="id" />
		<table>
			<caption>Registration Form</caption>
			<tr>
				<th scope="col"><label for="name">Name: </label></th>
				<th scope="col"><form:input path="name" id="name"
						maxLength="30" /></th>
				<th scope="col"><form:errors path="name" cssClass="error" /></th>
			</tr>

			<tr>
				<td><label for="joiningDate">Joining Date: </label></td>
				<td><form:input path="joiningDate" id="joiningDate"
						maxLength="10" /></td>
				<td><form:errors path="joiningDate" cssClass="error" /></td>
			</tr>

			<tr>
				<td><label for="salary">Salary: </label></td>
				<td><form:input path="salary" id="salary" maxLength="8" /></td>
				<td><form:errors path="salary" cssClass="error" /></td>
			</tr>

			<tr>
				<td><label for="employeeCode">Employee Code: </label></td>
				<td><form:input path="employeeCode" id="employeeCode"
						maxLength="5" /></td>
				<td><form:errors path="employeeCode" cssClass="error" /></td>
			</tr>

			<tr>
				<td colspan="3"><c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" />
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register" />
						</c:otherwise>
					</c:choose></td>
			</tr>
		</table>
	</form:form>
	<br />
	<br /> Go back to
	<a href="<c:url value='/list' />">List of All Employees</a>
</body>
</html>