package profesor


import grails.plugin.springsecurity.annotation.Secured;
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class PerfilProfesorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PerfilProfesor.list(params), model:[perfilProfesorInstanceCount: PerfilProfesor.count()]
    }

    def show(PerfilProfesor perfilProfesorInstance) {
        respond perfilProfesorInstance
    }

    def create() {
        respond new PerfilProfesor(params)
    }

    @Transactional
    def save(PerfilProfesor perfilProfesorInstance) {
        if (perfilProfesorInstance == null) {
            notFound()
            return
        }

        if (perfilProfesorInstance.hasErrors()) {
            respond perfilProfesorInstance.errors, view:'create'
            return
        }

        perfilProfesorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'perfilProfesor.label', default: 'PerfilProfesor'), perfilProfesorInstance.id])
                redirect perfilProfesorInstance
            }
            '*' { respond perfilProfesorInstance, [status: CREATED] }
        }
    }

    def edit(PerfilProfesor perfilProfesorInstance) {
        respond perfilProfesorInstance
    }

    @Transactional
    def update(PerfilProfesor perfilProfesorInstance) {
        if (perfilProfesorInstance == null) {
            notFound()
            return
        }

        if (perfilProfesorInstance.hasErrors()) {
            respond perfilProfesorInstance.errors, view:'edit'
            return
        }

        perfilProfesorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PerfilProfesor.label', default: 'PerfilProfesor'), perfilProfesorInstance.id])
                redirect perfilProfesorInstance
            }
            '*'{ respond perfilProfesorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PerfilProfesor perfilProfesorInstance) {

        if (perfilProfesorInstance == null) {
            notFound()
            return
        }

        perfilProfesorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PerfilProfesor.label', default: 'PerfilProfesor'), perfilProfesorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfilProfesor.label', default: 'PerfilProfesor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
