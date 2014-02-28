package com.ca.product

import com.ca.common.Entity

class Picture extends Entity {

    String name
	
    String path
	
	String description
	
	
	static hasMany= [tags: Tag] 

    static constraints = {
        name blank: false, nullable: false, unique: true
		path blank: true, nullable: true
    }
}
