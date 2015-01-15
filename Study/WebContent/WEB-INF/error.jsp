<%@ page isErrorPage="true"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html <%-- locale="true" --%>>
<head>
<title><bean:message key="jsp.error.title" /></title>
<html:base />
</head>
<body>
	<h3>
		<bean:message key="jsp.error.header" />
	</h3>
	<hr>
	<%=(exception != null) ? exception.toString()
						: "unknown error"%>
	<hr>
	<a href="login.do"><bean:message key="jsp.error.returnToLogin" /></a>
</body>
</html:html>