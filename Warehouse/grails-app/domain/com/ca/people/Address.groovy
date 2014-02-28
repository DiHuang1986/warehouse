package com.ca.people

import com.ca.enums.Country;

class Address {

    String fullName
    String addressLine1
    String addressLine2
    String city
    String state
    String zip
    Country country

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
