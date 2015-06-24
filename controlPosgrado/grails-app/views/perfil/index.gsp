
<%@ page import="alumno.Perfil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
		<!--

		<a href="#list-perfil" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->

		<div id="list-perfil" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel panel-info">
				<div class="panel-heading">
			  		<div class="row">
			  			<h1 class="col-md-9"><g:message code="default.list.label" args="[entityName]" /></h1>
						<g:link class="btn btn-primary col-md-2" action="create" role="button" sytle="margin-top: 20px;" data-toggle="tooltip" title="Crea un nuevo Doctor">
						<g:message code="default.new.label" args="[entityName]" /> &nbsp;&nbsp;
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						</g:link>
					</div>
			  	</div>

			<table class="table table-striped">
			<thead>
					<tr>

						<g:sortableColumn property="codigo" title="${message(code: 'perfil.codigo.label', default: 'Codigo')}" />

						<g:sortableColumn property="apellidoP" title="${message(code: 'perfil.apellidoP.label', default: 'Apellido Paterno')}" />

						<g:sortableColumn property="apellidoM" title="${message(code: 'perfil.apellidoM.label', default: 'Apellido Materno')}" />

						<g:sortableColumn property="nombre" title="${message(code: 'perfil.nombre.label', default: 'Nombre')}" />


						<g:sortableColumn property="email" title="${message(code: 'perfil.email.label', default: 'Email')}" />

						<g:sortableColumn property="pass" title="${message(code: 'perfil.pass.label', default: 'Pass')}" />


						<g:sortableColumn property="domicilioActual" title="${message(code: 'perfil.domicilioActual.label', default: 'Domicilio Actual')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${perfilInstanceList}" status="i" var="perfilInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${perfilInstance.id}">${fieldValue(bean: perfilInstance, field: "codigo")}</g:link></td>

						<td>${fieldValue(bean: perfilInstance, field: "apellidoP")}</td>

						<td>${fieldValue(bean: perfilInstance, field: "apellidoM")}</td>

						<td>${fieldValue(bean: perfilInstance, field: "nombre")}</td>

						<td>${fieldValue(bean: perfilInstance, field: "email")}</td>

						<td>${fieldValue(bean: perfilInstance, field: "pass")}</td>



						<td>${fieldValue(bean: perfilInstance, field: "domicilioActual")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${perfilInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
	</div>
	</body>
</html>
