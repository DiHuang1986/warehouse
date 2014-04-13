package com.ca.people

class Role {

    String name
    String description

    static hasMany = [privilges: Privilege]

    static constraints = {
        name nullable: false, blank: false
        description nullable: true, blank: true
    }
}
