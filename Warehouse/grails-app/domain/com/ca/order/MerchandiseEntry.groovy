package com.ca.order

import com.ca.product.Merchandise

class MerchandiseEntry {

    Merchandise merchandise

    Double singlePrice

    Integer quantity

	Boolean taxable
	
	Double taxRate
	
	static belongsTo = [order: Order]
    static constraints = {
    }
}
