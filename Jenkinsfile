pipeline {
    agent any
    environment {
        DOCKER_HUB_USER = 'sooryas20'
        // Logic to switch repo based on branch
        REPO_NAME = "${env.BRANCH_NAME == 'main' ? 'devops-build-prod' : 'devops-build-dev'}"
        DOCKER_CREDS = credentials('dockerhub-creds')
    }
    stages {
        stage('Build & Push') {
            steps {
                script {
                    echo "Building for branch: ${env.BRANCH_NAME}"
                    // Use your custom script
                    sh "./build.sh"

                    // Login and Push
                    sh "docker login -u ${DOCKER_HUB_USER} -p ${DOCKER_CREDS_PSW}"
                    sh "docker tag ${DOCKER_HUB_USER}/devops-build:latest ${DOCKER_HUB_USER}/${REPO_NAME}:latest"
                    sh "docker push ${DOCKER_HUB_USER}/${REPO_NAME}:latest"
                }
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying ${REPO_NAME} to Port 80..."
                // Use your custom script
                sh "./deploy.sh"
            }
        }
    }
}
