package com.ca.warehouse

import com.ca.product.Merchandise

class StockOutEntry {

    Merchandise merchandise

    Integer quantity

    static belongsTo = [form: StockOutForm]

    static constraints = {
        merchandise blank: false, nullable: false
        quantity nullable: false, min: 0
    }
}
