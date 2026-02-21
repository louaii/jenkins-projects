pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                echo 'Installing curl...'
                // If you are on a Linux-based Jenkins Docker image
                sh 'apt-get update && apt-get install -y curl' 
            }
        }
        stage('Run App') {
            steps {
                echo 'Executing our script...'
                sh 'chmod +x app.sh'
                sh './app.sh'
            }
        }
        stage('Artifact') {
            steps {
                echo 'Archiving results...'
                sh 'mkdir -p output && cp app.sh output/'
                archiveArtifacts artifacts: 'output/*', fingerprint: true
            }
        }
    }
}