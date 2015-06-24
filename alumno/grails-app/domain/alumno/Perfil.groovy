package alumno

class Perfil {


    String codigo
    String nombre
    String apellidoP
    String apellidoM

    String lugarNacimiento
    String domicilioActual
    Date fechaNacimiento

    String universidadAnterior
    String telefono

    String email
    String pass

    static constraints = {
      codigo unique:true
      email email: true, blank: false
      pass  blank: false
    }
}
