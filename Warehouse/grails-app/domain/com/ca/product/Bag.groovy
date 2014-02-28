package com.ca.product

class Bag extends Merchandise {

    String styleNo
	
    String colorNo

    static constraints = {
        colorNo unique: 'styleNo'
    }

    @Override
    String toString() {
        return "${styleNo}: ${colorNo}"
    }
}
