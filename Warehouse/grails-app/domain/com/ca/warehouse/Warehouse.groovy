package com.ca.warehouse

import com.ca.common.Entity
import com.ca.enums.Country;

class Warehouse extends Entity {

    String name
    
	Country country
    
	String city

	Boolean active
	
    static hasMany = [entries: WarehouseEntry]

    static constraints = {
		name 	nullable: false, blank: false
		country nullable: true
		city 	nullable: true
		active 	nullable: true
    }
}
