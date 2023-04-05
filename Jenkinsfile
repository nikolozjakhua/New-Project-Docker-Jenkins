pipeline {
  agent any
  stages {
    stage('build our website'){
      steps {
        sh "/app/scripts/build.sh"
      }
    }
    stage('Run unit tests'){
      steps {
        sh "/app/scripts/unit_tests.sh"
      }
    }
    stage('Deploy website'){
      steps {
        sh "/app/scripts/deploy_website.sh"
      }
    }
  } 
}

