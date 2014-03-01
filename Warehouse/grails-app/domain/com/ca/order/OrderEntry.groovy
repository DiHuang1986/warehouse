package com.ca.order

import com.ca.product.Merchandise

class OrderEntry {

    Merchandise merchandise

    Double singlePrice

    Integer quantity

	Boolean taxable
	
	Double taxRate
	
	static belongsTo = [order: Order]
    static constraints = {
    }
}
