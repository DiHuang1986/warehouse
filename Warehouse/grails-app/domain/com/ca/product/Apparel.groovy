package com.ca.product

class Apparel extends Merchandise {


    Double size

    String styleNo
    String colorNo

    String toString() {
        styleNo + ": " + colorNo
    }

    static constraints = {
    }
}
