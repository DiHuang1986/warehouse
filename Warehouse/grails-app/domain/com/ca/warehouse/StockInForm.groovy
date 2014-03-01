package com.ca.warehouse

import com.ca.people.Supplier

class StockInForm {

    Date inDate
	
    Supplier supplier

	Warehouse warehouse
	
    static hasMany = [entries: StockInEntry]

    public Double getSubtotal() {
        Double subtotal = 0.0

        for(StockInEntry item: entries)
            subtotal += item.quantity * item.singlePrice

        return subtotal
    }

    public Double getTax() {
        Double tax = 0.0
        for(StockInEntry item: entries)
            if(item.taxable)
                tax += item.singlePrice * item.taxRate * item.quantity

        return tax
    }

    public Double getTotal() {
        return getSubtotal() + getTax()
    }

	static mapping = {
		entries cascade: "all-delete-orphan"
	}
	
    static constraints = {
		inDate nullable: false, blank: false
		supplier nullable: true
		warehouse nullable: true	
    }
}
