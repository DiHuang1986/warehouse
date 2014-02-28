package com.ca.warehouse

import com.ca.product.Merchandise

class StockInEntry {
    
	Merchandise merchandise
	
    Integer quantity
    
	Double singlePrice
    
	Boolean taxable
    
	Double taxRate

    static belongsTo = [form: StockInForm]

    static constraints = {
		merchandise	nullable: false
		quantity 	nullable: false, min: 0
		singlePrice	nullable: false, min: 0.0d
		taxable		nullable: false
		taxRate 	nullable: false, min: 0.0d
    }
}
