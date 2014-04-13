package com.ca.warehouse



import grails.test.mixin.*
import spock.lang.*

@TestFor(StockOutEntryController)
@Mock(StockOutEntry)
class StockOutEntryControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.stockOutEntryInstanceList
            model.stockOutEntryInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.stockOutEntryInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def stockOutEntry = new StockOutEntry()
            stockOutEntry.validate()
            controller.save(stockOutEntry)

        then:"The create view is rendered again with the correct model"
            model.stockOutEntryInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            stockOutEntry = new StockOutEntry(params)

            controller.save(stockOutEntry)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/stockOutEntry/show/1'
            controller.flash.message != null
            StockOutEntry.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def stockOutEntry = new StockOutEntry(params)
            controller.show(stockOutEntry)

        then:"A model is populated containing the domain instance"
            model.stockOutEntryInstance == stockOutEntry
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def stockOutEntry = new StockOutEntry(params)
            controller.edit(stockOutEntry)

        then:"A model is populated containing the domain instance"
            model.stockOutEntryInstance == stockOutEntry
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/stockOutEntry/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def stockOutEntry = new StockOutEntry()
            stockOutEntry.validate()
            controller.update(stockOutEntry)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.stockOutEntryInstance == stockOutEntry

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            stockOutEntry = new StockOutEntry(params).save(flush: true)
            controller.update(stockOutEntry)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/stockOutEntry/show/$stockOutEntry.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/stockOutEntry/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def stockOutEntry = new StockOutEntry(params).save(flush: true)

        then:"It exists"
            StockOutEntry.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(stockOutEntry)

        then:"The instance is deleted"
            StockOutEntry.count() == 0
            response.redirectedUrl == '/stockOutEntry/index'
            flash.message != null
    }
}
