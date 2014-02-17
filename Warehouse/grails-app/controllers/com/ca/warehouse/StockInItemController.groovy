package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StockInItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockInItem.list(params), model: [stockInItemInstanceCount: StockInItem.count()]
    }

    def show(StockInItem stockInItemInstance) {
        respond stockInItemInstance
    }

    def create() {
        respond new StockInItem(params)
    }

    @Transactional
    def save(StockInItem stockInItemInstance) {
        if (stockInItemInstance == null) {
            notFound()
            return
        }

        if (stockInItemInstance.hasErrors()) {
            respond stockInItemInstance.errors, view: 'create'
            return
        }

        stockInItemInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockInItemInstance.label', default: 'StockInItem'), stockInItemInstance.id])
                redirect stockInItemInstance
            }
            '*' { respond stockInItemInstance, [status: CREATED] }
        }
    }

    def edit(StockInItem stockInItemInstance) {
        respond stockInItemInstance
    }

    @Transactional
    def update(StockInItem stockInItemInstance) {
        if (stockInItemInstance == null) {
            notFound()
            return
        }

        if (stockInItemInstance.hasErrors()) {
            respond stockInItemInstance.errors, view: 'edit'
            return
        }

        stockInItemInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockInItem.label', default: 'StockInItem'), stockInItemInstance.id])
                redirect stockInItemInstance
            }
            '*' { respond stockInItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockInItem stockInItemInstance) {

        if (stockInItemInstance == null) {
            notFound()
            return
        }

        stockInItemInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockInItem.label', default: 'StockInItem'), stockInItemInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockInItemInstance.label', default: 'StockInItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
