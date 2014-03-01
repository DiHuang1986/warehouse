package com.ca.product

abstract class Merchandise {

    /**
     * common property for every merchandise
     */
    String name
    String description
    String comment

    /**
     * the brand
     */
    Brand brand
    /**
     * the original price
     */
    Double tagPrice
    /**
     * bar code for the merchandise
     */
    Long barCode

    /**
     * size
     */
    Double length, width, height

    /**
     * the weight of this product, pound base
     */
    Integer pound, ounce

    /**
     * furthermore description for this product
     */
    Set<String> details

    /**
     * merchandise type
     */
    MerchandiseType merchandiseType

    static hasMany = [pictures: Picture, tags: Tag]

//    Boolean taxable

    static constraints = {
		// basic info
        name blank: false, nullable: false
        tagPrice nullable: false, min: 0.0d
		
		brand nullable: true
		description nullable: true, maxSize: 1000
		comment nullable: true, maxSize: 1000
		barCode nullable: true
		
		// size
		length nullable: true, min: 0d
		width nullable: true, min: 0d
		height nullable: true, min: 0d
		
		// weight
		pound nullable: true, min: 0
		ounce nullable: true, min: 0, max: 16
			
		merchandiseType nullable: true
    }
}
