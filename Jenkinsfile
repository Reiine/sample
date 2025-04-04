pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: "main", url: 'https://github.com/Reiine/sample.git'
            }
        }

        stage('Publish HTML') {
            steps {
                publishHTML(target: [
                    reportName : 'Rendered HTML Page',
                    reportDir  : '.',
                    reportFiles: 'index.html',
                    keepAll    : true,
                    alwaysLinkToLastBuild: true,
                    allowMissing: false
                ])
            }
        }
    }
}
