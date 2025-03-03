pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'ashrithkumar1998/jenkins-web:latest'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/ashrith-12/jenkins-web-deployment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'github-token', url: 'https://index.docker.io/v1/']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
    }
}