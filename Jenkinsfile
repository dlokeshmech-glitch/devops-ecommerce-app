
<<<<<<< HEAD
                script {
                    // Build Docker image
                    def dockerImage = docker.build("${DOCKER_IMAGE}")
                    
                    // Push to Docker Hub using credentials
                    withDockerRegistry(credentialsId: 'dockerhub_creds', url: 'https://index.docker.io/v1/') {
                        dockerImage.push()
                    }
=======
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push Image') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub_creds') {
                    sh 'docker push $DOCKER_IMAGE'
>>>>>>> 7ab8ca8
              
