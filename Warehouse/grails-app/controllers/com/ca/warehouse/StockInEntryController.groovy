package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockInEntryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockInEntry.list(params), model:[stockInEntryInstanceCount: StockInEntry.count()]
    }

    def show(StockInEntry stockInEntryInstance) {
        respond stockInEntryInstance
    }

    def create() {
        respond new StockInEntry(params)
    }

    @Transactional
    def save(StockInEntry stockInEntryInstance) {
        if (stockInEntryInstance == null) {
            notFound()
            return
        }

        if (stockInEntryInstance.hasErrors()) {
            respond stockInEntryInstance.errors, view:'create'
            return
        }

        stockInEntryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockInEntryInstance.label', default: 'StockInEntry'), stockInEntryInstance.id])
                redirect stockInEntryInstance
            }
            '*' { respond stockInEntryInstance, [status: CREATED] }
        }
    }

    def edit(StockInEntry stockInEntryInstance) {
        respond stockInEntryInstance
    }

    @Transactional
    def update(StockInEntry stockInEntryInstance) {
        if (stockInEntryInstance == null) {
            notFound()
            return
        }

        if (stockInEntryInstance.hasErrors()) {
            respond stockInEntryInstance.errors, view:'edit'
            return
        }

        stockInEntryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockInEntry.label', default: 'StockInEntry'), stockInEntryInstance.id])
                redirect stockInEntryInstance
            }
            '*'{ respond stockInEntryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockInEntry stockInEntryInstance) {

        if (stockInEntryInstance == null) {
            notFound()
            return
        }

        stockInEntryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockInEntry.label', default: 'StockInEntry'), stockInEntryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockInEntryInstance.label', default: 'StockInEntry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
