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
                powershell 'javac javafile.java'
            }
        }

        stage('Test') {
            steps {
                powershell 'java javafile.java'
            }
        }

        stage('Deploy') {
            steps {
                powershell 'chmod +x deploy.sh && ./deploy.sh'
            }
        }
    }
}
