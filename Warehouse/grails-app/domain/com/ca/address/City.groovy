package com.ca.address

class City {
	
	String name
	
	String zipCode
	
	static belongsTo = [state: State]
	
    static constraints = {
    	name nullable: false, blank: false
		zipCode nullable: false, blank: false
	}
	
	String toString() {
		"${name} ${state.name} ${state.country.name}"
	}
}
