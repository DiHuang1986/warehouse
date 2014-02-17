package com.ca.warehouse

import com.ca.product.Merchandise

class StorageItem {

    static belongsTo = [warehouse: Warehouse]

    Merchandise merchandise
    Integer quantity

    static constraints = {
    }
}
