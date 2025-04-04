pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-repo/html-demo.git'

            }
        }

        stage('Display HTML Content') {
            steps {
                script {
                    def htmlContent = readFile('index.html')
                    echo '--- HTML File Content Start ---'
                    echo htmlContent
                    echo '--- HTML File Content End ---'
                }
            }
        }
    }
}
