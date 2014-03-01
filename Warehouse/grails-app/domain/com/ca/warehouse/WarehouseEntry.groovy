package com.ca.warehouse

import com.ca.product.Merchandise

class WarehouseEntry {

    static belongsTo = [warehouse: Warehouse]

    Merchandise merchandise
    
	Integer quantity
	
    static constraints = {
		merchandise nullable: false
		quantity min: 0
    }
}
