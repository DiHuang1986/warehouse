package com.ca.warehouse

import com.ca.common.Country
import com.ca.common.Entity

class Warehouse extends Entity {


    String name
    Country country
    String city

    static hasMany = [storage: StorageItem]

    static constraints = {
    }
}
