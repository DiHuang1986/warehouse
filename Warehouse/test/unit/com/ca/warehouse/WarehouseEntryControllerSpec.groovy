package com.ca.warehouse



import grails.test.mixin.*
import spock.lang.*

@TestFor(WarehouseEntryController)
@Mock(WarehouseEntry)
class WarehouseEntryControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.warehouseEntryInstanceList
            model.warehouseEntryInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.warehouseEntryInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def warehouseEntry = new WarehouseEntry()
            warehouseEntry.validate()
            controller.save(warehouseEntry)

        then:"The create view is rendered again with the correct model"
            model.warehouseEntryInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            warehouseEntry = new WarehouseEntry(params)

            controller.save(warehouseEntry)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/warehouseEntry/show/1'
            controller.flash.message != null
            WarehouseEntry.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def warehouseEntry = new WarehouseEntry(params)
            controller.show(warehouseEntry)

        then:"A model is populated containing the domain instance"
            model.warehouseEntryInstance == warehouseEntry
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def warehouseEntry = new WarehouseEntry(params)
            controller.edit(warehouseEntry)

        then:"A model is populated containing the domain instance"
            model.warehouseEntryInstance == warehouseEntry
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/warehouseEntry/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def warehouseEntry = new WarehouseEntry()
            warehouseEntry.validate()
            controller.update(warehouseEntry)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.warehouseEntryInstance == warehouseEntry

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            warehouseEntry = new WarehouseEntry(params).save(flush: true)
            controller.update(warehouseEntry)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/warehouseEntry/show/$warehouseEntry.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/warehouseEntry/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def warehouseEntry = new WarehouseEntry(params).save(flush: true)

        then:"It exists"
            WarehouseEntry.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(warehouseEntry)

        then:"The instance is deleted"
            WarehouseEntry.count() == 0
            response.redirectedUrl == '/warehouseEntry/index'
            flash.message != null
    }
}
