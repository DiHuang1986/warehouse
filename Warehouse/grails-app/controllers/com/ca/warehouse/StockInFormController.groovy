package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockInFormController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockInForm.list(params), model:[stockInFormInstanceCount: StockInForm.count()]
    }

    def show(StockInForm stockInFormInstance) {
        respond stockInFormInstance
    }

    def create() {
        respond new StockInForm(params)
    }

    @Transactional
    def save(StockInForm stockInFormInstance) {
        if (stockInFormInstance == null) {
            notFound()
            return
        }

        if (stockInFormInstance.hasErrors()) {
            respond stockInFormInstance.errors, view:'create'
            return
        }

        stockInFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockInFormInstance.label', default: 'StockInForm'), stockInFormInstance.id])
                redirect stockInFormInstance
            }
            '*' { respond stockInFormInstance, [status: CREATED] }
        }
    }

    def edit(StockInForm stockInFormInstance) {
        respond stockInFormInstance
    }

    @Transactional
    def update(StockInForm stockInFormInstance) {
        if (stockInFormInstance == null) {
            notFound()
            return
        }

        if (stockInFormInstance.hasErrors()) {
            respond stockInFormInstance.errors, view:'edit'
            return
        }

        stockInFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockInForm.label', default: 'StockInForm'), stockInFormInstance.id])
                redirect stockInFormInstance
            }
            '*'{ respond stockInFormInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockInForm stockInFormInstance) {

        if (stockInFormInstance == null) {
            notFound()
            return
        }

        stockInFormInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockInForm.label', default: 'StockInForm'), stockInFormInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockInFormInstance.label', default: 'StockInForm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
