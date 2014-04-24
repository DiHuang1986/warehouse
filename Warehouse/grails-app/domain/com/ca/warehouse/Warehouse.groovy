package com.ca.warehouse

import com.ca.address.Country

class Warehouse {

    String name

    Country country

    String city

    Boolean active = Boolean.TRUE

    static hasMany = [entries: WarehouseEntry]

    static mapping = {
        entries cascade: "all-delete-orphan"
    }

    static constraints = {
        name nullable: false, blank: false
        country nullable: true
        city nullable: true
        active nullable: true
    }

    String toString() {
        "${this.class.simpleName}: ${name} ${country? '-'+country.name: ""} "
    }
}
