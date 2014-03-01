package com.ca.product

class Bag extends Merchandise {

    String styleNo
	
    String colorNo

    static constraints = {
		styleNo	nullable: false
        colorNo unique: 'styleNo', nullable: false, blank: true
    }

    @Override
    String toString() {
        return "${styleNo}: ${colorNo}"
    }
}
