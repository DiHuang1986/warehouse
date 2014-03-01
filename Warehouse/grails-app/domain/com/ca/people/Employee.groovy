package com.ca.people

class Employee extends People {

    Double currentSalary

    static hasOne = [loginInfo: LoginInfo]

    static hasMany = [roles: Role]

    static constraints = {
    }
}
