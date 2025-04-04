pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: "main", url: 'https://github.com/Reiine/sample.git'
            }
        }

        stage('Display HTML File') {
            steps {
                script {
                    def htmlContent = readFile 'index.html'
                    echo "===== HTML Output ====="
                    echo htmlContent
                }
            }
        }
    }
}
