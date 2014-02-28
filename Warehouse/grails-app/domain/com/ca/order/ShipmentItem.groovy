package com.ca.order

import com.ca.product.Merchandise

class ShipmentItem {
	
	Merchandise merchandise
	
	Integer quantity
	
	
	static belongsTo = [shipment: Shipment]
    static constraints = {
		merchandise(nullable: false, blank: false)
		quantity(min: 0)
    }
}
