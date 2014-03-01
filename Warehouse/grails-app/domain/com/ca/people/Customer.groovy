package com.ca.people

import com.ca.order.CustomerOrder

class Customer extends People {
	
	static hasMany = [orders: CustomerOrder]
	
    static constraints = {
    }
}
