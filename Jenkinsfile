pipeline {
    agent {
        docker {
            image 'node:14' // Specify the Docker image to use for the build
        }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'npm install' // Install project dependencies
            }
        }
        
        stage('Test') {
            steps {
                sh 'npm test' // Run tests
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .' // Build the Docker image
            }
        }
        
        stage('Publish Docker Image') {
            steps {
                sh 'docker login -u amaraws -p Amar3058@' https://hub.docker.com/u/amaraws // Login to Docker 
                sh 'docker tag myapp https://hub.docker.com/u/amaraws/amaraws/myapp' // Tag the Docker image
                sh 'docker push https://hub.docker.com/u/amaraws/amaraws/myapp' // Push the Docker image to the registry
            }
        }
    }
}
