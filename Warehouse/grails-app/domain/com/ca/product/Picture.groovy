package com.ca.product


class Picture {

    String name
	
    String path
	
	String description
	
	
	static hasMany= [tags: Tag] 

    static constraints = {
        name blank: false, nullable: false, unique: true
		path blank: true, nullable: true
    }
}
