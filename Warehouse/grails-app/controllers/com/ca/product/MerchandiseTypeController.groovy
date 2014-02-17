package com.ca.product



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MerchandiseTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MerchandiseType.list(params), model: [merchandiseTypeInstanceCount: MerchandiseType.count()]
    }

    def show(MerchandiseType merchandiseTypeInstance) {
        respond merchandiseTypeInstance
    }

    def create() {
        respond new MerchandiseType(params)
    }

    @Transactional
    def save(MerchandiseType merchandiseTypeInstance) {
        if (merchandiseTypeInstance == null) {
            notFound()
            return
        }

        if (merchandiseTypeInstance.hasErrors()) {
            respond merchandiseTypeInstance.errors, view: 'create'
            return
        }

        merchandiseTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'merchandiseTypeInstance.label', default: 'MerchandiseType'), merchandiseTypeInstance.id])
                redirect merchandiseTypeInstance
            }
            '*' { respond merchandiseTypeInstance, [status: CREATED] }
        }
    }

    def edit(MerchandiseType merchandiseTypeInstance) {
        respond merchandiseTypeInstance
    }

    @Transactional
    def update(MerchandiseType merchandiseTypeInstance) {
        if (merchandiseTypeInstance == null) {
            notFound()
            return
        }

        if (merchandiseTypeInstance.hasErrors()) {
            respond merchandiseTypeInstance.errors, view: 'edit'
            return
        }

        merchandiseTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MerchandiseType.label', default: 'MerchandiseType'), merchandiseTypeInstance.id])
                redirect merchandiseTypeInstance
            }
            '*' { respond merchandiseTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MerchandiseType merchandiseTypeInstance) {

        if (merchandiseTypeInstance == null) {
            notFound()
            return
        }

        merchandiseTypeInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MerchandiseType.label', default: 'MerchandiseType'), merchandiseTypeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'merchandiseTypeInstance.label', default: 'MerchandiseType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
