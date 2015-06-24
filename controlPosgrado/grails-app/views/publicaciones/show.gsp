
<%@ page import="profesor.Publicaciones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'publicaciones.label', default: 'Publicaciones')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			<div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
			<!--
			<a href="#show-publicaciones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		-->
			<div id="show-publicaciones" class="content scaffold-show" role="main">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<ol class="property-list publicaciones">

					<g:if test="${publicacionesInstance?.agno}">
					<li class="fieldcontain">
						<span id="agno-label" class="property-label"><g:message code="publicaciones.agno.label" default="Agno" /></span>

							<span class="property-value" aria-labelledby="agno-label"><g:fieldValue bean="${publicacionesInstance}" field="agno"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.numero}">
					<li class="fieldcontain">
						<span id="numero-label" class="property-label"><g:message code="publicaciones.numero.label" default="Numero" /></span>

							<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${publicacionesInstance}" field="numero"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.autor}">
					<li class="fieldcontain">
						<span id="autor-label" class="property-label"><g:message code="publicaciones.autor.label" default="Autor" /></span>

							<span class="property-value" aria-labelledby="autor-label"><g:fieldValue bean="${publicacionesInstance}" field="autor"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.paginas}">
					<li class="fieldcontain">
						<span id="paginas-label" class="property-label"><g:message code="publicaciones.paginas.label" default="Paginas" /></span>

							<span class="property-value" aria-labelledby="paginas-label"><g:fieldValue bean="${publicacionesInstance}" field="paginas"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.adscripcionAutores}">
					<li class="fieldcontain">
						<span id="adscripcionAutores-label" class="property-label"><g:message code="publicaciones.adscripcionAutores.label" default="Adscripcion Autores" /></span>

							<span class="property-value" aria-labelledby="adscripcionAutores-label"><g:fieldValue bean="${publicacionesInstance}" field="adscripcionAutores"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.agnoPublicacion}">
					<li class="fieldcontain">
						<span id="agnoPublicacion-label" class="property-label"><g:message code="publicaciones.agnoPublicacion.label" default="Agno Publicacion" /></span>

							<span class="property-value" aria-labelledby="agnoPublicacion-label"><g:fieldValue bean="${publicacionesInstance}" field="agnoPublicacion"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.coautor_es}">
					<li class="fieldcontain">
						<span id="coautor_es-label" class="property-label"><g:message code="publicaciones.coautor_es.label" default="Coautores" /></span>

							<span class="property-value" aria-labelledby="coautor_es-label"><g:fieldValue bean="${publicacionesInstance}" field="coautor_es"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.isbn}">
					<li class="fieldcontain">
						<span id="isbn-label" class="property-label"><g:message code="publicaciones.isbn.label" default="Isbn" /></span>

							<span class="property-value" aria-labelledby="isbn-label"><g:fieldValue bean="${publicacionesInstance}" field="isbn"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.issn}">
					<li class="fieldcontain">
						<span id="issn-label" class="property-label"><g:message code="publicaciones.issn.label" default="Issn" /></span>

							<span class="property-value" aria-labelledby="issn-label"><g:fieldValue bean="${publicacionesInstance}" field="issn"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.nombreCongreso}">
					<li class="fieldcontain">
						<span id="nombreCongreso-label" class="property-label"><g:message code="publicaciones.nombreCongreso.label" default="Nombre Congreso" /></span>

							<span class="property-value" aria-labelledby="nombreCongreso-label"><g:fieldValue bean="${publicacionesInstance}" field="nombreCongreso"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.nombreJournal}">
					<li class="fieldcontain">
						<span id="nombreJournal-label" class="property-label"><g:message code="publicaciones.nombreJournal.label" default="Nombre Journal" /></span>

							<span class="property-value" aria-labelledby="nombreJournal-label"><g:fieldValue bean="${publicacionesInstance}" field="nombreJournal"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.nombreLibroOcapitulo}">
					<li class="fieldcontain">
						<span id="nombreLibroOcapitulo-label" class="property-label"><g:message code="publicaciones.nombreLibroOcapitulo.label" default="Nombre Libro Ocapitulo" /></span>

							<span class="property-value" aria-labelledby="nombreLibroOcapitulo-label"><g:fieldValue bean="${publicacionesInstance}" field="nombreLibroOcapitulo"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.publicacionesInstituto}">
					<li class="fieldcontain">
						<span id="publicacionesInstituto-label" class="property-label"><g:message code="publicaciones.publicacionesInstituto.label" default="Publicaciones Instituto" /></span>

							<span class="property-value" aria-labelledby="publicacionesInstituto-label"><g:fieldValue bean="${publicacionesInstance}" field="publicacionesInstituto"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.tipoCongreso}">
					<li class="fieldcontain">
						<span id="tipoCongreso-label" class="property-label"><g:message code="publicaciones.tipoCongreso.label" default="Tipo Congreso" /></span>

							<span class="property-value" aria-labelledby="tipoCongreso-label"><g:formatBoolean boolean="${publicacionesInstance?.tipoCongreso}" /></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.tituloTrabajo}">
					<li class="fieldcontain">
						<span id="tituloTrabajo-label" class="property-label"><g:message code="publicaciones.tituloTrabajo.label" default="Titulo Trabajo" /></span>

							<span class="property-value" aria-labelledby="tituloTrabajo-label"><g:fieldValue bean="${publicacionesInstance}" field="tituloTrabajo"/></span>

					</li>
					</g:if>

					<g:if test="${publicacionesInstance?.volumen}">
					<li class="fieldcontain">
						<span id="volumen-label" class="property-label"><g:message code="publicaciones.volumen.label" default="Volumen" /></span>

							<span class="property-value" aria-labelledby="volumen-label"><g:fieldValue bean="${publicacionesInstance}" field="volumen"/></span>

					</li>
					</g:if>

				</ol>
				<g:form url="[resource:publicacionesInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${publicacionesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
