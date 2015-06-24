<%@ page import="profesor.PerfilProfesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'perfilProfesor.label', default: 'PerfilProfesor')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
		<!--
		<a href="#edit-perfilProfesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	-->
		<div id="edit-perfilProfesor" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${perfilProfesorInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${perfilProfesorInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:perfilProfesorInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${perfilProfesorInstance?.version}" />
				<fieldset class="form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons col-sm-offset-2">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
		<script>
		$(document).ready( function(){
			var navhere = $(".nav ul");
			var botones=navhere.html()
			navhere = $("#navTemp");
			navhere.remove();
			setNavBarShowEdit(botones)
		});
	</script>
	</body>
</html>
