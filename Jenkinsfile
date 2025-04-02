pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Reiine/sample.git'
            }
        }

        stage('Build') {
            steps {
                sh 'javac javafile.java'
            }
        }

        stage('Test') {
            steps {
                sh 'java -cp . org.junit.runner.JUnitCore TestMain'
            }
        }

        stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh'
            }
        }
    }
}
