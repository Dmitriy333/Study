<%@ page errorPage="error.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html>
<head>
<title><bean:message key="jsp.main.title" /></title>
<html:base />
</head>
<body>
	<h3>
		<bean:message key="jsp.main.header" />
	</h3>
	<hr />
	<bean:message key="jsp.main.hello" />
	,
	<bean:write name="loginForm" property="login" />
	<hr />
	<a href="/Study/login.do"><bean:message key="jsp.error.returnToLogin" /></a>
	<html:errors />
</body>
</html:html>