package com.ca.product



import grails.test.mixin.*
import spock.lang.*

@TestFor(BagController)
@Mock(Bag)
class BagControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.bagInstanceList
            model.bagInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.bagInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def bag = new Bag()
            bag.validate()
            controller.save(bag)

        then:"The create view is rendered again with the correct model"
            model.bagInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            bag = new Bag(params)

            controller.save(bag)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/bag/show/1'
            controller.flash.message != null
            Bag.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def bag = new Bag(params)
            controller.show(bag)

        then:"A model is populated containing the domain instance"
            model.bagInstance == bag
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def bag = new Bag(params)
            controller.edit(bag)

        then:"A model is populated containing the domain instance"
            model.bagInstance == bag
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/bag/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def bag = new Bag()
            bag.validate()
            controller.update(bag)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.bagInstance == bag

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            bag = new Bag(params).save(flush: true)
            controller.update(bag)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/bag/show/$bag.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/bag/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def bag = new Bag(params).save(flush: true)

        then:"It exists"
            Bag.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(bag)

        then:"The instance is deleted"
            Bag.count() == 0
            response.redirectedUrl == '/bag/index'
            flash.message != null
    }
}
