package com.ca.product


class Brand {

    String name
    String description
    String comment

    static constraints = {
        name 		blank: false
		description 	nullable: true
		comment 		nullable: true
    }

    public String toString() {
        name
    }
}
