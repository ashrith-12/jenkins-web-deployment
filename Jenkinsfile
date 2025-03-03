pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'ashrithkumar1998/jenkins-web:latest'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/ashrithkumar1998/jenkins-web-deployment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'ashrithkumar1998', url: 'https://index.docker.io/v1/']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
    }
}