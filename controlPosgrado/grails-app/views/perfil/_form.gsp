<%@ page import="alumno.Perfil" %>



<div class="form-group ${hasErrors(bean: perfilInstance, field: 'codigo', 'error')} required">
	<label for="codigo" class="col-sm-2 control-label">
		<g:message code="perfil.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="codigo" required="" value="${perfilInstance?.codigo}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'email', 'error')} required">
	<label class="col-sm-2 control-label" for="email">
		<g:message code="perfil.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="col-sm-2 control-label"type="email" name="email" required="" value="${perfilInstance?.email}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'pass', 'error')} required">
	<label class="col-sm-2 control-label" for="pass">
		<g:message code="perfil.pass.label" default="Pass" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label"name="pass" required="" value="${perfilInstance?.pass}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'apellidoM', 'error')} required">
	<label class="col-sm-2 control-label" for="apellidoM">
		<g:message code="perfil.apellidoM.label" default="Apellido M" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="apellidoM" required="" value="${perfilInstance?.apellidoM}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'apellidoP', 'error')} required">
	<label class="col-sm-2 control-label" for="apellidoP">
		<g:message code="perfil.apellidoP.label" default="Apellido P" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="apellidoP" required="" value="${perfilInstance?.apellidoP}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'domicilioActual', 'error')} required">
	<label class="col-sm-2 control-label"for="domicilioActual">
		<g:message code="perfil.domicilioActual.label" default="Domicilio Actual" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="domicilioActual" required="" value="${perfilInstance?.domicilioActual}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'fechaNacimiento', 'error')} required">
	<label class="col-sm-2 control-label" for="fechaNacimiento">
		<g:message code="perfil.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class="col-sm-2 control-label" name="fechaNacimiento" precision="day"  value="${perfilInstance?.fechaNacimiento}"  />

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'lugarNacimiento', 'error')} required">
	<label class="col-sm-2 control-label" for="lugarNacimiento">
		<g:message code="perfil.lugarNacimiento.label" default="Lugar Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="lugarNacimiento" required="" value="${perfilInstance?.lugarNacimiento}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'nombre', 'error')} required">
	<label class="col-sm-2 control-label" for="nombre">
		<g:message code="perfil.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="nombre" required="" value="${perfilInstance?.nombre}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'telefono', 'error')} required">
	<label class="col-sm-2 control-label" for="telefono">
		<g:message code="perfil.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="telefono" required="" value="${perfilInstance?.telefono}"/>

</div>

<div class="form-group ${hasErrors(bean: perfilInstance, field: 'universidadAnterior', 'error')} required">
	<label  class="col-sm-2 control-label" for="universidadAnterior">
		<g:message code="perfil.universidadAnterior.label" default="Universidad Anterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="col-sm-2 control-label" name="universidadAnterior" required="" value="${perfilInstance?.universidadAnterior}"/>

</div>
