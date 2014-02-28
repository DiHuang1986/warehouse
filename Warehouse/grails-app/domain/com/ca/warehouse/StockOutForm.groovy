package com.ca.warehouse

import com.ca.people.People

class StockOutForm {
	
	Date outDate
	
	People collector
	
	Warehouse warehouse
	
	static hasMany = [entries: StockOutEntry]
	
    static constraints = {
		outDate nullable: false, blank: false
		collector nullable: true
		warehouse nullable: true
    }
}
