package com.ca.product

class Color {

    String name
    String comment
    String description

    String colorCode

    static constraints = {
		name		nullable: false, blank: false
		colorCode	nullable: false, blank: false
		description	nullable: true
		comment		nullable: true
    }

    public String toString() {
        name
    }
}
