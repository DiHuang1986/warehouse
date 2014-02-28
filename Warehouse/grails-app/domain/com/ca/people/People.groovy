package com.ca.people

import com.ca.common.Entity
import com.ca.enums.Gender;

abstract class People extends Entity {
    String firstName
    String lastName

    Gender gender

    static hasMany = [addressBook: Address]

    static constraints = {
    }
}
