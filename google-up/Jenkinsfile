pipeline {
    agent any

    stages {
        stage('Check Environment') {
            steps {
                echo 'Checking if curl exists...'
                // 'where' is the Windows version of 'which'
                bat 'where curl'
            }
        }
        stage('Run App') {
            steps {
                echo 'Executing our Windows Batch script...'
                // On Windows, we don't need chmod. We just run the .bat file.
                bat 'app.bat'
            }
        }
        stage('Artifact') {
            steps {
                echo 'Archiving results...'
                // Windows commands for making directory and copying
                bat 'if not exist output mkdir output'
                bat 'copy app.bat output\\'
                archiveArtifacts artifacts: 'output/*', fingerprint: true
            }
        }
    }
}