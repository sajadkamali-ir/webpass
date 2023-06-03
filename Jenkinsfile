
pipeline {
    agent any
    environment {
            REPO_NAME = "docker.io"
            PROJECT_NAME = "webpass"
            BASE_IMAGE = "${PROJECT_NAME}_frontend_site"
            DOCKER_IMAGE = "${REPO_NAME}/${BASE_IMAGE}/${BRANCH_NAME}:${BUILD_NUMBER}"
 

            
    }
    stages {
        stage('build') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} . "
                echo "Build Done !"
            }
        }
    }
}
