package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockOutFormController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockOutForm.list(params), model:[stockOutFormInstanceCount: StockOutForm.count()]
    }

    def show(StockOutForm stockOutFormInstance) {
        respond stockOutFormInstance
    }

    def create() {
        respond new StockOutForm(params)
    }

    @Transactional
    def save(StockOutForm stockOutFormInstance) {
        if (stockOutFormInstance == null) {
            notFound()
            return
        }

        if (stockOutFormInstance.hasErrors()) {
            respond stockOutFormInstance.errors, view:'create'
            return
        }

        stockOutFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockOutFormInstance.label', default: 'StockOutForm'), stockOutFormInstance.id])
                redirect stockOutFormInstance
            }
            '*' { respond stockOutFormInstance, [status: CREATED] }
        }
    }

    def edit(StockOutForm stockOutFormInstance) {
        respond stockOutFormInstance
    }

    @Transactional
    def update(StockOutForm stockOutFormInstance) {
        if (stockOutFormInstance == null) {
            notFound()
            return
        }

        if (stockOutFormInstance.hasErrors()) {
            respond stockOutFormInstance.errors, view:'edit'
            return
        }

        stockOutFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockOutForm.label', default: 'StockOutForm'), stockOutFormInstance.id])
                redirect stockOutFormInstance
            }
            '*'{ respond stockOutFormInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockOutForm stockOutFormInstance) {

        if (stockOutFormInstance == null) {
            notFound()
            return
        }

        stockOutFormInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockOutForm.label', default: 'StockOutForm'), stockOutFormInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockOutFormInstance.label', default: 'StockOutForm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
