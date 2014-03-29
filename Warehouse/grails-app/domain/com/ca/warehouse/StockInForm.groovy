package com.ca.warehouse

import com.ca.people.Supplier

class StockInForm {

    Date inDate

    Supplier supplier

    Warehouse warehouse

    static hasMany = [entries: StockInEntry]

    static mapping = {
        entries cascade: "all-delete-orphan"
    }

    static constraints = {
        inDate nullable: false
        supplier nullable: true
        warehouse nullable: true
    }
}
