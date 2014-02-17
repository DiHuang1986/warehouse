package com.ca.product

import com.ca.common.Entity

class Picture extends Entity {
    final String IMG_STORAGE_LOCATION = ""


    String name
    String path

    static constraints = {
        name blank: true, nullable: true
        path blank: true, nullable: true
    }
}
