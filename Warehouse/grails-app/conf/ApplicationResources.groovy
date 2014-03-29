modules = {

    application {
        resource url:'js/application.js'
    }

    bootstrap {
        resource url: 'resources/bootstrap/css/bootstrap.min.css'
        resource url: 'resources/bootstrap/css/bootstrap-theme.min.css'
        resource url: 'resources/bootstrap/js/bootstrap.min.js'

        dependsOn 'jquery'
    }
}