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
            powershell 'echo hello'
          }
    }
  }
}
