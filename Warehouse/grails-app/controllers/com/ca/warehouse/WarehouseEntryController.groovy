package com.ca.warehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WarehouseEntryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond WarehouseEntry.list(params), model: [warehouseEntryInstanceCount: WarehouseEntry.count()]
    }

    def show(WarehouseEntry warehouseEntryInstance) {
        respond warehouseEntryInstance
    }

    def create() {
        respond new WarehouseEntry(params)
    }

    @Transactional
    def save(WarehouseEntry warehouseEntryInstance) {
        if (warehouseEntryInstance == null) {
            notFound()
            return
        }

        if (warehouseEntryInstance.hasErrors()) {
            respond warehouseEntryInstance.errors, view: 'create'
            return
        }

        warehouseEntryInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'warehouseEntryInstance.label', default: 'WarehouseEntry'), warehouseEntryInstance.id])
                redirect warehouseEntryInstance
            }
            '*' { respond warehouseEntryInstance, [status: CREATED] }
        }
    }

    def edit(WarehouseEntry warehouseEntryInstance) {
        respond warehouseEntryInstance
    }

    @Transactional
    def update(WarehouseEntry warehouseEntryInstance) {
        if (warehouseEntryInstance == null) {
            notFound()
            return
        }

        if (warehouseEntryInstance.hasErrors()) {
            respond warehouseEntryInstance.errors, view: 'edit'
            return
        }

        warehouseEntryInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WarehouseEntry.label', default: 'WarehouseEntry'), warehouseEntryInstance.id])
                redirect warehouseEntryInstance
            }
            '*' { respond warehouseEntryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WarehouseEntry warehouseEntryInstance) {

        if (warehouseEntryInstance == null) {
            notFound()
            return
        }

        warehouseEntryInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WarehouseEntry.label', default: 'WarehouseEntry'), warehouseEntryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'warehouseEntryInstance.label', default: 'WarehouseEntry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
