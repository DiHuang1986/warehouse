package com.ca.warehouse

import com.ca.common.Entity
import com.ca.people.Supplier

class StockInForm extends Entity {

    Date inDate
    Supplier supplier

    Double fee

    static hasMany = [items: StockInItem]

    public Double getSubtotal() {
        Double subtotal = 0.0

        for(StockInItem item: items)
            subtotal += item.quantity * item.singlePrice

        return subtotal
    }

    public Double getTax() {
        Double tax = 0.0
        for(StockInItem item: items)
            if(item.tax)
                tax += item.singlePrice * item.taxRate * item.quantity

        return tax
    }

    public Double getTotal() {
        return getSubtotal() + getTax()
    }

    static constraints = {
    }
}
