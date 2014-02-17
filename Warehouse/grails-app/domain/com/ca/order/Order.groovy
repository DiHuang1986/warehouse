package com.ca.order

import com.ca.common.Entity
import com.ca.common.OrderStatus

abstract class Order extends Entity{

//    Address shippingAddress

    

    Date createdDate

    OrderStatus status
    

    static hasMany = [items: OrderItem, shipments: Shipment]




    static constraints = {
        createdDate blank: false
    }
}
