
pipeline {
    agent any
    environment {
            REPO_NAME = "docker.io"
            PROJECT_NAME = "webpass"
            BASE_IMAGE = "${PROJECT_NAME}_frontend_site"
            DOCKER_IMAGE = "${REPO_NAME}/${BASE_IMAGE}:${BUILD_NUMBER}"
            DOCKEHUB_CREDENTIALS_ID = "docker-creds"            
    }
    stages {
        stage('build') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${DOCKEHUB_CREDENTIALS_ID}", usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "docker build -t ${DOCKER_IMAGE} . "
                    sh "docker push ${DOCKER_IMAGE}"
                    echo "Build Done"
                }
            }
        }
    }
}
