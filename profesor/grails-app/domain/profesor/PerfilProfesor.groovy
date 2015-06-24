package profesor

class PerfilProfesor {
    String titulo
    String nombre
    String apellidoP
    String apellidoM
    String email
    String pass

    static constraints = {

    email email: true, blank: false, unique:true
    pass  blank: false
    }
}
