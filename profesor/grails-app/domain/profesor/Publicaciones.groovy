package profesor

class Publicaciones {

    String  publicacionesInstituto
    String  agno
    String  numero
    String  autor
    String  coautor_es
    String  adscripcionAutores
    String  tituloTrabajo
    String  nombreJournal
    String  nombreCongreso
    boolean tipoCongreso
    String  nombreLibroOcapitulo
    String  volumen
    String  paginas
    String  agnoPublicacion
    String  issn
    String  isbn
    static constraints = {
      agno matches: "[0-9 ]+"
      numero matches: "[0-9 ]+"
      paginas matches: "[0-9 ]+"
      agnoPublicacion matches: "[0-9]+"

    }
}
