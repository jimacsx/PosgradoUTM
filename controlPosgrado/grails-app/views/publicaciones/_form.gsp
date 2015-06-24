<%@ page import="profesor.Publicaciones" %>


<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'publicacionesInstituto', 'error')} required">
	<label class="col-sm-2 control-label" for="publicacionesInstituto">
		<g:message code="publicaciones.publicacionesInstituto.label" default="Publicaciones del Instituto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="publicacionesInstituto" required="" value="${publicacionesInstance?.publicacionesInstituto}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'agno', 'error')} required">
	<label class="col-sm-2 control-label" for="agno">
		<g:message code="publicaciones.agno.label" default="Número de año" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="agno" pattern="${publicacionesInstance.constraints.agno.matches}" required="" value="${publicacionesInstance?.agno}"/>

</div>


<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'numero', 'error')} required">
	<label class="col-sm-2 control-label" for="numero">
		<g:message code="publicaciones.numero.label" default="Número" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="numero" pattern="${publicacionesInstance.constraints.numero.matches}" required="" value="${publicacionesInstance?.numero}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'autor', 'error')} required">
	<label class="col-sm-2 control-label" for="autor">
		<g:message code="publicaciones.autor.label" default="Autor principal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="autor" pattern="${publicacionesInstance.constraints.autor.matches}" required="" value="${publicacionesInstance?.autor}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'coautor_es', 'error')} required">
	<label class="col-sm-2 control-label" for="coautor_es">
		<g:message code="publicaciones.coautor_es.label" default="Coautores" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="coautor_es" required="" value="${publicacionesInstance?.coautor_es}"/>

</div>


<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'adscripcionAutores', 'error')} required">
	<label class="col-sm-2 control-label" for="adscripcionAutores">
		<g:message code="publicaciones.adscripcionAutores.label" default="Adscripción de los Autores" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="adscripcionAutores" required="" value="${publicacionesInstance?.adscripcionAutores}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'tituloTrabajo', 'error')} required">
	<label class="col-sm-2 control-label" for="tituloTrabajo">
		<g:message code="publicaciones.tituloTrabajo.label" default="Título del trabajo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="tituloTrabajo" required="" value="${publicacionesInstance?.tituloTrabajo}"/>

</div>
<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'nombreJournal', 'error')} required">
	<label class="col-sm-2 control-label" for="nombreJournal">
		<g:message code="publicaciones.nombreJournal.label" default="Nombre del Journal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="nombreJournal" required="" value="${publicacionesInstance?.nombreJournal}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'nombreCongreso', 'error')} required">
	<label class="col-sm-2 control-label" for="nombreCongreso">
		<g:message code="publicaciones.nombreCongreso.label" default="Nombre del congreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="nombreCongreso" required="" value="${publicacionesInstance?.nombreCongreso}"/>

</div>



<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'tipoCongreso', 'error')} ">
	<label class="col-sm-2 control-label" for="tipoCongreso">
		<g:message code="publicaciones.tipoCongreso.label" default="Tipo de Congreso" />

	</label>
	<p class="col-sm-2 control-label">Nacional</p>
	<g:radio class="col-sm-2 control-label"name="tipoCongreso" value="${false}"/>
	<p class="col-sm-2 control-label">Internacional</p>
	<g:radio class="col-sm-2 control-label"name="tipoCongreso" value="${true}" checked="true"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'nombreLibroOcapitulo', 'error')} required">
	<label class="col-sm-2 control-label" for="nombreLibroOcapitulo">
		<g:message code="publicaciones.nombreLibroOcapitulo.label" default="Nombre del libro/capítulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="nombreLibroOcapitulo" required="" value="${publicacionesInstance?.nombreLibroOcapitulo}"/>

</div>


<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'volumen', 'error')} required">
	<label class="col-sm-2 control-label" for="volumen">
		<g:message code="publicaciones.volumen.label" default="Volumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="volumen" required="" value="${publicacionesInstance?.volumen}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'paginas', 'error')} required">
	<label class="col-sm-2 control-label" for="paginas">
		<g:message code="publicaciones.paginas.label" default="Páginas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="paginas" pattern="${publicacionesInstance.constraints.paginas.matches}" required="" value="${publicacionesInstance?.paginas}"/>

</div>


<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'agnoPublicacion', 'error')} required">
	<label class="col-sm-2 control-label" for="agnoPublicacion">
		<g:message code="publicaciones.agnoPublicacion.label" default="Año de publicación" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="agnoPublicacion" required="" value="${publicacionesInstance?.agnoPublicacion}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'issn', 'error')} required">
	<label class="col-sm-2 control-label" for="issn">
		<g:message code="publicaciones.issn.label" default="ISSN" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="issn" required="" value="${publicacionesInstance?.issn}"/>

</div>

<div class="form-group  ${hasErrors(bean: publicacionesInstance, field: 'isbn', 'error')} required">
	<label class="col-sm-2 control-label" for="isbn">
		<g:message code="publicaciones.isbn.label" default="ISBN" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="isbn" required="" value="${publicacionesInstance?.isbn}"/>

</div>
