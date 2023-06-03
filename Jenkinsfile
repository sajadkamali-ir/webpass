
pipeline {
    agent any
    environment {
            PROJECT_NAME = "webapp"
            DOCKER_IMAGE = "${PROJECT_NAME}_frontend_site"
            
    }
    stages {
        stage('build') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
                echo "Build Done !"
            }
        }
    }
}
