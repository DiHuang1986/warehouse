package com.ca.service

import grails.transaction.Transactional
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile


@Transactional
class FileUploadService {
	def grailsApplication
	final static String ROOT = "/"
	
    private String uploadFile(MultipartFile file, String name, String destinationDirectory) {
        def servletContext = ServletContextHolder.servletContext
        def root = servletContext.getRealPath(ROOT)

        def fileFolder = new File("${root}/${destinationDirectory}")
		
		def filePath = new File(fileFolder, name)
		
        if(!fileFolder.exists()) {
            println("Creating Directory")
            if(fileFolder.mkdir()) {
                println("Success")
            } else {
                println "false"
            }    
        }
		
		if(!file.isEmpty()) {
			file.transferTo(filePath)
			println("Saved File: ${destinationDirectory}/${name}")
			return "${destinationDirectory}/${name}"
		} else {
			return null
		}
    }
	
	String uploadProductPicture(MultipartFile file, String name, String parentFolder) {
		def prodcutPath = grailsApplication.config.com.ca.config.PRODUCT_IMAGES_PATH
		def destinationDirectory = "${prodcutPath}/${parentFolder}"
		return uploadFile(file, name, destinationDirectory)
	}
	String uploadReceiptPicture(MultipartFile file, String name, String parentFolder) {
		def prodcutPath = grailsApplication.config.com.ca.config.RECEIPT_IMAGES_PATH
		def destinationDirectory = "${RECEIPT_IMAGE_FOLDER}/${parentFolder}"
	}
}
