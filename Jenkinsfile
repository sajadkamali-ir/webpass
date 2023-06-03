
pipeline {
    agent none
    environment {
            PROJECT_NAME = "webapp"
            DOCKER_IMAGE = "${PROJECT_NAME}_frontend_site"
            
    }
    stages {
        stage('build') {
            agent {
                label 'jenkins-server'
            }
            steps {
                sh "cp .env.example .env"
                sh "docker build -t ${DOCKER_IMAGE} .
                echo "Build Done !"
            }
        }
    }
}
