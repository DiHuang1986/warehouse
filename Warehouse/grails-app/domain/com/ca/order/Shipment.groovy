package com.ca.order

import com.ca.common.ShippmentStatus
import com.ca.people.Address

class Shipment {

    String trackingNo
    String carrier

    Date shippedDate

    Address shipAddress

    ShippmentStatus status

    static constraints = {
       
    }
}
