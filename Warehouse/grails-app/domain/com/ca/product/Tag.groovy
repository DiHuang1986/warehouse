package com.ca.product

class Tag {
	String name
    static constraints = {
		name(blank: false, nullable: false)
    }
    String toString() {
        name
    }
}
