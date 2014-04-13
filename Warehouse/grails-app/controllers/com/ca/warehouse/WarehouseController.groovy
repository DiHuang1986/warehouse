package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WarehouseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Warehouse.list(params), model: [warehouseInstanceCount: Warehouse.count()]
    }

    def show(Warehouse warehouseInstance) {
        respond warehouseInstance
    }

    def create() {
        respond new Warehouse(params)
    }

    @Transactional
    def save(Warehouse warehouseInstance) {
        if (warehouseInstance == null) {
            notFound()
            return
        }

        if (warehouseInstance.hasErrors()) {
            respond warehouseInstance.errors, view: 'create'
            return
        }

        warehouseInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'warehouseInstance.label', default: 'Warehouse'), warehouseInstance.id])
                redirect warehouseInstance
            }
            '*' { respond warehouseInstance, [status: CREATED] }
        }
    }

    def edit(Warehouse warehouseInstance) {
        respond warehouseInstance
    }

    @Transactional
    def update(Warehouse warehouseInstance) {
        if (warehouseInstance == null) {
            notFound()
            return
        }

        if (warehouseInstance.hasErrors()) {
            respond warehouseInstance.errors, view: 'edit'
            return
        }

        warehouseInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Warehouse.label', default: 'Warehouse'), warehouseInstance.id])
                redirect warehouseInstance
            }
            '*' { respond warehouseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Warehouse warehouseInstance) {

        if (warehouseInstance == null) {
            notFound()
            return
        }

        warehouseInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Warehouse.label', default: 'Warehouse'), warehouseInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'warehouseInstance.label', default: 'Warehouse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
