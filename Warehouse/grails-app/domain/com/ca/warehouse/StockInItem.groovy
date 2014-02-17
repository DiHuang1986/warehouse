package com.ca.warehouse

import com.ca.product.Merchandise

class StockInItem {
    Merchandise merchandise
    Integer quantity
    Double singlePrice
    Boolean tax
    Double taxRate


    static belongsTo = [form: StockInForm]

    static constraints = {
    }
}
