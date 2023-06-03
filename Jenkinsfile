
pipeline {
    agent any
    environment {
            PROJECT_NAME = "webpass"
            BASE_IMAGE = "${PROJECT_NAME}_frontend_site"
            DOCKER_USER = "sajademperor"
            DOCKER_IMAGE = "${DOCKER_USER}/${BASE_IMAGE}:${BUILD_NUMBER}"
            DOCKEHUB_CREDENTIALS_ID = "docker-creds"            
    }
    stages {
        stage('build') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} . "
                sh "docker push ${DOCKER_IMAGE} "
                echo "Build Done"

            }
        }
    }
}
