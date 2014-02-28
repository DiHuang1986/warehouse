package com.ca.product

import com.ca.common.Entity

class Tag extends Entity {
	String name
    static constraints = {
		name(blank: false, nullable: false)
    }
}
