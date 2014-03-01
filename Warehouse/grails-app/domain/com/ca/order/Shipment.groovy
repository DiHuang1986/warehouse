package com.ca.order

import com.ca.address.Address;
import com.ca.enums.ShippmentStatus;

class Shipment {

    String trackingNo
    String carrier

    Date shippedDate

    Address shipAddress

    ShippmentStatus status

	
	
    static hasMany = [items: ShipmentEntry]
	static	constraints = {
       
    }
}
