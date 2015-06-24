
<%@ page import="profesor.Publicaciones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'publicaciones.label', default: 'Publicaciones')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
			<!--<a href="#list-publicaciones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		-->
		<div class="panel-heading">
					<div class="row">

					<g:link class="btn btn-primary col-md-2" action="create" role="button" sytle="margin-top: 20px;" data-toggle="tooltip" title="Crea un nuevo Doctor">
					<g:message code="default.new.label" args="[entityName]" /> &nbsp;&nbsp;
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					</g:link>
				</div>
		</div>

			<div id="list-publicaciones" class="content scaffold-list" role="main">
				<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
			<table class="table table-striped">
				<thead>
						<tr>

							<g:sortableColumn property="agno" title="${message(code: 'publicaciones.agno.label', default: 'Agno')}" />

							<g:sortableColumn property="numero" title="${message(code: 'publicaciones.numero.label', default: 'Numero')}" />

							<g:sortableColumn property="autor" title="${message(code: 'publicaciones.autor.label', default: 'Autor')}" />

							<g:sortableColumn property="paginas" title="${message(code: 'publicaciones.paginas.label', default: 'Paginas')}" />

							<g:sortableColumn property="adscripcionAutores" title="${message(code: 'publicaciones.adscripcionAutores.label', default: 'Adscripcion Autores')}" />

							<g:sortableColumn property="agnoPublicacion" title="${message(code: 'publicaciones.agnoPublicacion.label', default: 'Agno Publicacion')}" />

						</tr>
					</thead>
					<tbody>
					<g:each in="${publicacionesInstanceList}" status="i" var="publicacionesInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td><g:link action="show" id="${publicacionesInstance.id}">${fieldValue(bean: publicacionesInstance, field: "agno")}</g:link></td>

							<td>${fieldValue(bean: publicacionesInstance, field: "numero")}</td>

							<td>${fieldValue(bean: publicacionesInstance, field: "autor")}</td>

							<td>${fieldValue(bean: publicacionesInstance, field: "paginas")}</td>

							<td>${fieldValue(bean: publicacionesInstance, field: "adscripcionAutores")}</td>

							<td>${fieldValue(bean: publicacionesInstance, field: "agnoPublicacion")}</td>

						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${publicacionesInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
