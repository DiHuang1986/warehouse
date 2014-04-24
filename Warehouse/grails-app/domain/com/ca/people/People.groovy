package com.ca.people

import com.ca.address.Address;
import com.ca.enums.Gender

abstract class People {
    
	String firstName
    
	String lastName

    Gender gender

    static hasMany = [addressBook: Address]

    static constraints = {
		firstName nullable: false, blank: false
		lastName nullable: false, blank: false
		gender nullable: false, blank: false
    }

    String toString() {
        "${lastName}, ${firstName}"
    }
}
