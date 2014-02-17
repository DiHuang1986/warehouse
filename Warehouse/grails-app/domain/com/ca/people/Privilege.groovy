package com.ca.people

class Privilege {

    String name
    String description

    static constraints = {
        name nullable: false, blank: false, unique: true
    }
}
