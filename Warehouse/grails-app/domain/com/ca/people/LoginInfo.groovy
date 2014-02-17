package com.ca.people

class LoginInfo {

    String userName
    String password

    static belongsTo = [employee: Employee]

    static constraints = {
        userName blank: false, nullable: false, unique: true
        password blank: false, nullable: false

    }
}
