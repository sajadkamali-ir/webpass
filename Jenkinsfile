
pipeline {
    agent any
    environment {
            PROJECT_NAME = "webpass"
            BASE_IMAGE = "${PROJECT_NAME}_frontend_site"
            DOCKER_USER = "sajademperor"
            DOCKER_IMAGE = "${DOCKER_USER}/${BASE_IMAGE}:${BUILD_NUMBER}"
            DOCKEHUB_CREDENTIALS_ID = "docker-creds" 
            KUBECONFIG="/var/lib/jenkins/.k3s.yaml"
    }
    stages {
        stage('build') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} . "
                sh "docker push ${DOCKER_IMAGE} "
                echo "Build Done"

            }
        }
        stage('deploy') {
            steps {
                sh "kubectl --kubeconfig=${KUBECONFIG} set image deployments/webpass-deployment webpass-panel=docker.io/sajademperor/webpass_frontend_site:${BUILD_NUMBER}"
                
            }
        }
    }
}
