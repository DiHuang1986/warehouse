package com.ca.address


class Address {

    String fullName
    String addressLine1
    String addressLine2
    String city
    String state
    String country
	String zip

    String phoneNumber

    static constraints = {
        fullName blank: false
        addressLine1 blank: false
        addressLine2 nullable: true
        city blank: false
        state blank: false
        zip blank: false
        country blank: false
        phoneNumber blank: false
    }
}
