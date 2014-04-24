package com.ca.people

class Supplier extends People {


    static constraints = {
    }

    String toString() {
        "${this.class.simpleName}: ${super.toString()}"
    }
}
