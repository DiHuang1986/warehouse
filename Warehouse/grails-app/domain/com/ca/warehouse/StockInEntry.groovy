package com.ca.warehouse

import com.ca.product.Merchandise

class StockInEntry {

    Merchandise merchandise

    Integer quantity

    static belongsTo = [form: StockInForm]

    static constraints = {
        merchandise blank: false, nullable: false
        quantity nullable: false, min: 0
    }
}
