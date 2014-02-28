package com.ca.order

import com.ca.enums.ShippmentStatus;
import com.ca.people.Address

class Shipment {

    String trackingNo
    String carrier

    Date shippedDate

    Address shipAddress

    ShippmentStatus status

	
	
    static hasMany = [items: ShipmentItem]
	static	constraints = {
       
    }
}
