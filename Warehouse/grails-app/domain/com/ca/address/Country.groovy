package com.ca.address

/**
 * Created by Dee on 2/7/14.
 */
class Country {
	
	String name
	
	static hasMany = [states: State]
	
	static constraints = {
		name nullable: false, blank: false
	}
}