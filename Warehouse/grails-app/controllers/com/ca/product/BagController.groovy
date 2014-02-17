package com.ca.product



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BagController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Bag.list(params), model:[bagInstanceCount: Bag.count()]
    }

    def show(Bag bagInstance) {
        respond bagInstance
    }

    def create() {
        respond new Bag(params)
    }

    @Transactional
    def save(Bag bagInstance) {
        if (bagInstance == null) {
            notFound()
            return
        }

        if (bagInstance.hasErrors()) {
            respond bagInstance.errors, view:'create'
            return
        }

        bagInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bagInstance.label', default: 'Bag'), bagInstance.id])
                redirect bagInstance
            }
            '*' { respond bagInstance, [status: CREATED] }
        }
    }

    def edit(Bag bagInstance) {
        respond bagInstance
    }

    @Transactional
    def update(Bag bagInstance) {
        if (bagInstance == null) {
            notFound()
            return
        }

        if (bagInstance.hasErrors()) {
            respond bagInstance.errors, view:'edit'
            return
        }

        bagInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Bag.label', default: 'Bag'), bagInstance.id])
                redirect bagInstance
            }
            '*'{ respond bagInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Bag bagInstance) {

        if (bagInstance == null) {
            notFound()
            return
        }

        bagInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Bag.label', default: 'Bag'), bagInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bagInstance.label', default: 'Bag'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
