<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; char-set=utf-8">
<%-- вывод сообщения из .properties проекта --%>
<title><bean:message key="jsp.login.title" /></title>
<%-- генерируется тег <base> с атрибутом href, в котором будет URL текущего application. При этом все относительные ссылки на странице ответа отсчитываются от этого значения --%>
<html:base />
</head>
<body>
	<h3>
		<bean:message key="jsp.login.header" />
	</h3>
	<hr />
	<%-- форма для логина --%>
	<html:form action="/login" method="POST">
		<bean:message key="jsp.login.field.login" />:<br>
		<%-- текстовое поле для имени пользователя --%>
		<html:text property="login" />
		date:
		<html:text property="date" />
		<br>
		<bean:message key="jsp.login.field.password" />:<br>
		<%-- текстовое поле для пароля пользователя --%>
		<html:password property="password" redisplay="false" />
		<br>
		<html:submit>
			<bean:message key="jsp.Login.button.submit" />
		</html:submit>
	</html:form>
	<%-- пользовательский тег для отображения ошибок списком, открываю-щие/закрывающие значения которого берутся из файла ресурсов --%>
	<html:errors />
	<hr />
</body>
</html:html>