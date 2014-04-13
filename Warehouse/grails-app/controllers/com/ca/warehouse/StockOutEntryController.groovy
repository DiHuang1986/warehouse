package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockOutEntryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockOutEntry.list(params), model:[stockOutEntryInstanceCount: StockOutEntry.count()]
    }

    def show(StockOutEntry stockOutEntryInstance) {
        respond stockOutEntryInstance
    }

    def create() {
        respond new StockOutEntry(params)
    }

    @Transactional
    def save(StockOutEntry stockOutEntryInstance) {
        if (stockOutEntryInstance == null) {
            notFound()
            return
        }

        if (stockOutEntryInstance.hasErrors()) {
            respond stockOutEntryInstance.errors, view:'create'
            return
        }

        stockOutEntryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockOutEntryInstance.label', default: 'StockOutEntry'), stockOutEntryInstance.id])
                redirect stockOutEntryInstance
            }
            '*' { respond stockOutEntryInstance, [status: CREATED] }
        }
    }

    def edit(StockOutEntry stockOutEntryInstance) {
        respond stockOutEntryInstance
    }

    @Transactional
    def update(StockOutEntry stockOutEntryInstance) {
        if (stockOutEntryInstance == null) {
            notFound()
            return
        }

        if (stockOutEntryInstance.hasErrors()) {
            respond stockOutEntryInstance.errors, view:'edit'
            return
        }

        stockOutEntryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockOutEntry.label', default: 'StockOutEntry'), stockOutEntryInstance.id])
                redirect stockOutEntryInstance
            }
            '*'{ respond stockOutEntryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockOutEntry stockOutEntryInstance) {

        if (stockOutEntryInstance == null) {
            notFound()
            return
        }

        stockOutEntryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockOutEntry.label', default: 'StockOutEntry'), stockOutEntryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockOutEntryInstance.label', default: 'StockOutEntry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
