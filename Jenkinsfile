pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Reiine/sample.git'
            }
        }

        stage('Build') {
            steps {
                powershell 'javac Main.java'
            }
        }

        stage('Test') {
            steps {
                powershell 'java Main'
            }
        }

        stage('Deploy') {
            steps {
                powershell '''
                Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
                Start-Process -FilePath "deploy.sh" -NoNewWindow -Wait
                '''
            }
        }
    }
}
