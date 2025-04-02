pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/your-repo/java-project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'javac Main.java'
            }
        }

        stage('Test') {
            steps {
                sh 'java -cp . org.junit.runner.JUnitCore TestMain'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application..."
                sh 'mv Main.class /path/to/server/'
            }
        }
    }
}
