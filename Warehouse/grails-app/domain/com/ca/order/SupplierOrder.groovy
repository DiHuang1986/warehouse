package com.ca.order

import com.ca.people.Supplier

class SupplierOrder {
		
	static belongsTo = [supplier: Supplier]
	
    static constraints = {
    }
}
