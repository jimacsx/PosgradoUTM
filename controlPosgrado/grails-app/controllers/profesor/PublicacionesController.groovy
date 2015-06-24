package profesor


import grails.plugin.springsecurity.annotation.Secured;
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class PublicacionesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Publicaciones.list(params), model:[publicacionesInstanceCount: Publicaciones.count()]
    }

    def show(Publicaciones publicacionesInstance) {
        respond publicacionesInstance
    }

    def create() {
        respond new Publicaciones(params)
    }

    @Transactional
    def save(Publicaciones publicacionesInstance) {
        if (publicacionesInstance == null) {
            notFound()
            return
        }

        if (publicacionesInstance.hasErrors()) {
            respond publicacionesInstance.errors, view:'create'
            return
        }

        publicacionesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'publicaciones.label', default: 'Publicaciones'), publicacionesInstance.id])
                redirect publicacionesInstance
            }
            '*' { respond publicacionesInstance, [status: CREATED] }
        }
    }

    def edit(Publicaciones publicacionesInstance) {
        respond publicacionesInstance
    }

    @Transactional
    def update(Publicaciones publicacionesInstance) {
        if (publicacionesInstance == null) {
            notFound()
            return
        }

        if (publicacionesInstance.hasErrors()) {
            respond publicacionesInstance.errors, view:'edit'
            return
        }

        publicacionesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Publicaciones.label', default: 'Publicaciones'), publicacionesInstance.id])
                redirect publicacionesInstance
            }
            '*'{ respond publicacionesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Publicaciones publicacionesInstance) {

        if (publicacionesInstance == null) {
            notFound()
            return
        }

        publicacionesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Publicaciones.label', default: 'Publicaciones'), publicacionesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'publicaciones.label', default: 'Publicaciones'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
