pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
        DEV_IMAGE = "sans97/dev:latest"
        PROD_IMAGE = "sans97/prod:latest"
    }
    stages {
        stage('Clone') {
            steps {
                git branch: env.BRANCH_NAME, url: 'https://github.com/Sans97/devops-build.git'
            }
        }
        stage('Build') {
            steps {
                sh 'chmod +x build.sh && ./build.sh'
            }
        }
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push to Dev') {
            when { branch 'dev' }
            steps {
                sh """
                    docker tag devops-build:latest $DEV_IMAGE
                    docker push $DEV_IMAGE
                """
            }
        }
        stage('Push to Prod') {
            when { branch 'main' }
            steps {
                sh """
                    docker tag devops-build:latest $PROD_IMAGE
                    docker push $PROD_IMAGE
                """
            }
        }
        stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
