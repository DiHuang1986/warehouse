package com.ca.order

import com.ca.enums.OrderStatus;

abstract class Order {

    Date createdDate

    OrderStatus status
    
    static hasMany = [entries: OrderEntry, shipments: Shipment]

    static constraints = {
        createdDate nullable: false
		status nullable: false
    }
}
