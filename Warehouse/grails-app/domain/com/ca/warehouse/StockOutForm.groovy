package com.ca.warehouse

import com.ca.people.People

class StockOutForm {

    Date outDate

    People collector

    Warehouse warehouse

    static hasMany = [entries: StockOutEntry]

    static mapping = {
        entries cascade: "all-delete-orphan"
    }

    static constraints = {
        outDate nullable: false
        collector nullable: true
        warehouse nullable: true
    }
}
