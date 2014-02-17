package com.ca.people

class Role {

    String name
    String description

    static hasMany = [privilges: Privilege]

    static constraints = {
    }
}
