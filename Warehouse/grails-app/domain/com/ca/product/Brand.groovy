package com.ca.product

import com.ca.common.Entity

class Brand extends Entity {

    String brandName
    String description
    String comment

    static constraints = {
        brandName blank: false
    }

    public String toString() {
        brandName
    }
}
