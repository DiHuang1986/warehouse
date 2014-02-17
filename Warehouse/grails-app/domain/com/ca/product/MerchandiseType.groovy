package com.ca.product

import com.ca.common.Category

class MerchandiseType {

    String name
    String description

    Category category

    static hasMany = [feature: String]


    static constraints = {
    }
}
