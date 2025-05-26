pipeline{
  agent any
  stages{
    stage("Clone"){
      steps{
        git branch: 'main', url:'https://github.com/Reiine/sample.git'
      }
    }
    stage("Build"){
      steps{
        powershell javac Main.java
      }
    }
    stage("Run"){
      steps{
        powershell java Main
      }
    }
    stage("Deploy"){
      steps{
        bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "chmod +x deploy.sh && ./deploy.sh"'
      }
    }
  }
}
