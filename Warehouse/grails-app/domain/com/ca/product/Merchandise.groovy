package com.ca.product

import com.ca.common.Entity

abstract class Merchandise extends Entity {

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
    String EANCode

    /**
     * size
     */
    Double length
    Double width
    Double height

    /**
     * the weight of this product, pound base
     */
    Integer pound
    Integer ounce

    /**
     * furthermore description for this product
     */
    Set<String> details

    /**
     * merchandise type
     */
    MerchandiseType merchandiseType

    static hasMany = [pictures: Picture]

//    Boolean taxable

    static constraints = {
        name blank: false
        description nullable: true, maxSize: 1000
        comment nullable: true, maxSize: 1000
        tagPrice min: 0.0D
    }
}
