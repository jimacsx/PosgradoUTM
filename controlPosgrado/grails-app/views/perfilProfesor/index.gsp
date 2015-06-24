
<%@ page import="profesor.PerfilProfesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'perfilProfesor.label', default: 'PerfilProfesor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
	<!--	<a href="#list-perfilProfesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
		<div class="panel-heading">
					<div class="row">

					<g:link class="btn btn-primary col-md-2" action="create" role="button" sytle="margin-top: 20px;" data-toggle="tooltip" title="Crea un nuevo Doctor">
					<g:message code="default.new.label" args="[entityName]" /> &nbsp;&nbsp;
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					</g:link>
				</div>
				</div>

		<div id="list-perfilProfesor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>

						<g:sortableColumn property="email" title="${message(code: 'perfilProfesor.email.label', default: 'Email')}" />

						<g:sortableColumn property="pass" title="${message(code: 'perfilProfesor.pass.label', default: 'Pass')}" />

						<g:sortableColumn property="apellidoM" title="${message(code: 'perfilProfesor.apellidoM.label', default: 'Apellido M')}" />

						<g:sortableColumn property="apellidoP" title="${message(code: 'perfilProfesor.apellidoP.label', default: 'Apellido P')}" />

						<g:sortableColumn property="nombre" title="${message(code: 'perfilProfesor.nombre.label', default: 'Nombre')}" />

						<g:sortableColumn property="titulo" title="${message(code: 'perfilProfesor.titulo.label', default: 'Titulo')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${perfilProfesorInstanceList}" status="i" var="perfilProfesorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${perfilProfesorInstance.id}">${fieldValue(bean: perfilProfesorInstance, field: "email")}</g:link></td>

						<td>${fieldValue(bean: perfilProfesorInstance, field: "pass")}</td>

						<td>${fieldValue(bean: perfilProfesorInstance, field: "apellidoM")}</td>

						<td>${fieldValue(bean: perfilProfesorInstance, field: "apellidoP")}</td>

						<td>${fieldValue(bean: perfilProfesorInstance, field: "nombre")}</td>

						<td>${fieldValue(bean: perfilProfesorInstance, field: "titulo")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${perfilProfesorInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
	</body>
</html>
