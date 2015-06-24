
<%@ page import="profesor.PerfilProfesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'perfilProfesor.label', default: 'PerfilProfesor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
		<!--
		<a href="#show-perfilProfesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	-->
		<div id="show-perfilProfesor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list perfilProfesor">

				<g:if test="${perfilProfesorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="perfilProfesor.email.label" default="Email" /></span>

						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${perfilProfesorInstance}" field="email"/></span>

				</li>
				</g:if>

				<g:if test="${perfilProfesorInstance?.pass}">
				<li class="fieldcontain">
					<span id="pass-label" class="property-label"><g:message code="perfilProfesor.pass.label" default="Pass" /></span>

						<span class="property-value" aria-labelledby="pass-label"><g:fieldValue bean="${perfilProfesorInstance}" field="pass"/></span>

				</li>
				</g:if>

				<g:if test="${perfilProfesorInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="perfilProfesor.apellidoM.label" default="Apellido M" /></span>

						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${perfilProfesorInstance}" field="apellidoM"/></span>

				</li>
				</g:if>

				<g:if test="${perfilProfesorInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="perfilProfesor.apellidoP.label" default="Apellido P" /></span>

						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${perfilProfesorInstance}" field="apellidoP"/></span>

				</li>
				</g:if>

				<g:if test="${perfilProfesorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="perfilProfesor.nombre.label" default="Nombre" /></span>

						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${perfilProfesorInstance}" field="nombre"/></span>

				</li>
				</g:if>

				<g:if test="${perfilProfesorInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="perfilProfesor.titulo.label" default="Titulo" /></span>

						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${perfilProfesorInstance}" field="titulo"/></span>

				</li>
				</g:if>

			</ol>
				<g:form url="[resource:perfilProfesorInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons col-sm-offset-2">
							<g:link class="btn btn-primary" action="edit" resource="${perfilProfesorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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
