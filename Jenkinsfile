pipeline{
  agent any
  stages{
    stage("Clone"){
      steps{
        git branch: 'main', url:'https://github.com/Reiine/sample.git'
      }
    }
    stage("Publish"){
          steps{
            publishHTML(target:[
              reportName: 'Rendered HTML page',
              reportDir : '.',
              reportFiles: 'index.html',
              keepAll:true,
              allowMissing: false,
              alwaysLinkToLastBuild: true
            ])
          }
    }
  }
}
