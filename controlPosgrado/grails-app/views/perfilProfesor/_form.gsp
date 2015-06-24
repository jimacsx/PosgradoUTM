<%@ page import="profesor.PerfilProfesor" %>



<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'titulo', 'error')} required">
	<label class="col-sm-2 control-label" for="titulo">
		<g:message code="perfilProfesor.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="titulo" required="" value="${perfilProfesorInstance?.titulo}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'nombre', 'error')} required">
	<label class="col-sm-2 control-label" for="nombre">
		<g:message code="perfilProfesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="nombre" required="" value="${perfilProfesorInstance?.nombre}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'apellidoP', 'error')} required">
	<label class="col-sm-2 control-label" for="apellidoP">
		<g:message code="perfilProfesor.apellidoP.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="apellidoP" required="" value="${perfilProfesorInstance?.apellidoP}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'apellidoM', 'error')} required">
	<label class="col-sm-2 control-label" for="apellidoM">
		<g:message code="perfilProfesor.apellidoM.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="apellidoM" required="" value="${perfilProfesorInstance?.apellidoM}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'email', 'error')} required">
	<label class="col-sm-2 control-label" for="email">
		<g:message code="perfilProfesor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="col-sm-2 control-label" type="email" name="email" required="" value="${perfilProfesorInstance?.email}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilProfesorInstance, field: 'pass', 'error')} required">
	<label class="col-sm-2 control-label" for="pass">
		<g:message code="perfilProfesor.pass.label" default="Pass" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField class="col-sm-2 control-label" name="pass" required="" value="${perfilProfesorInstance?.pass}"/>

</div>
