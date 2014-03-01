package com.ca.address

class State {
	
	String name
	
	static belongsTo = [country: Country]
	
	static hasMany = [cities: City]
	
    static constraints = {
    }
}
