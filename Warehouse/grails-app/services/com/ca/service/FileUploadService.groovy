package com.ca.service

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class FileUploadService {

    def String uploadFile(MultipartFile file, String name, String destinationDirectory) {
        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)

        def storagePathDirectory = new File(storagePath)
        if(!storagePathDirectory.exists()) {
            println("Creating Directory")
            if(storagePathDirectory.mkdir()) {
                println("Success")
            } else {
                println "false"
            }

            if(!file.isEmpty()) {
                file.transferTo(new File("${storagePath}/${name}"))
                println("Saved File: ${storagePath}/${name}")
                return "${storagePath}/${name}"
            } else {
                return null
            }
        }
    }
}
