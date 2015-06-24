
<%@ page import="alumno.Perfil" %>
<!DOCTYPE html>
<html>
	<head>
		<<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
		<!--<a href="#show-perfil" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
		<div id="show-perfil" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list perfil">

				<g:if test="${perfilInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="perfil.codigo.label" default="Codigo" /></span>

						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${perfilInstance}" field="codigo"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="perfil.email.label" default="Email" /></span>

						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${perfilInstance}" field="email"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.pass}">
				<li class="fieldcontain">
					<span id="pass-label" class="property-label"><g:message code="perfil.pass.label" default="Pass" /></span>

						<span class="property-value" aria-labelledby="pass-label"><g:fieldValue bean="${perfilInstance}" field="pass"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="perfil.apellidoM.label" default="Apellido M" /></span>

						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${perfilInstance}" field="apellidoM"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="perfil.apellidoP.label" default="Apellido P" /></span>

						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${perfilInstance}" field="apellidoP"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.domicilioActual}">
				<li class="fieldcontain">
					<span id="domicilioActual-label" class="property-label"><g:message code="perfil.domicilioActual.label" default="Domicilio Actual" /></span>

						<span class="property-value" aria-labelledby="domicilioActual-label"><g:fieldValue bean="${perfilInstance}" field="domicilioActual"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="perfil.fechaNacimiento.label" default="Fecha Nacimiento" /></span>

						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${perfilInstance?.fechaNacimiento}" /></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.lugarNacimiento}">
				<li class="fieldcontain">
					<span id="lugarNacimiento-label" class="property-label"><g:message code="perfil.lugarNacimiento.label" default="Lugar Nacimiento" /></span>

						<span class="property-value" aria-labelledby="lugarNacimiento-label"><g:fieldValue bean="${perfilInstance}" field="lugarNacimiento"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="perfil.nombre.label" default="Nombre" /></span>

						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${perfilInstance}" field="nombre"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="perfil.telefono.label" default="Telefono" /></span>

						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${perfilInstance}" field="telefono"/></span>

				</li>
				</g:if>

				<g:if test="${perfilInstance?.universidadAnterior}">
				<li class="fieldcontain">
					<span id="universidadAnterior-label" class="property-label"><g:message code="perfil.universidadAnterior.label" default="Universidad Anterior" /></span>

						<span class="property-value" aria-labelledby="universidadAnterior-label"><g:fieldValue bean="${perfilInstance}" field="universidadAnterior"/></span>

				</li>
				</g:if>

			</ol>
			<g:form url="[resource:perfilInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons col-sm-offset-2">
					<g:link class="btn btn-info" action="edit" resource="${perfilInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-info" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
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
