package com.ca.product

import com.ca.enums.MerchandiseCategory;


class MerchandiseType {

    String name
    String description

    MerchandiseCategory category
	
    static hasMany = [
            feature: String
    ]


    static constraints = {
		name(nullable: false, blank: false)
		description(nullable: true, blank: true)
		category(nullable: false)
    }
	
	String toString() {
		"${category}: ${name}"
	}
}
