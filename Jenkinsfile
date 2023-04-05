pipeline {
  agent any
  stages {
    stage('build our website'){
      steps {
	sh 'chmod +x "/app/scripts/build.sh"'
        sh "/app/scripts/build.sh"
      }
    }
    stage('Run unit tests'){
      steps {
	sh 'chmod +x "/app/scripts/unit_tests.sh"'
        sh "/app/scripts/unit_tests.sh"
      }
    }
    stage('Deploy website'){
      steps {
	sh 'chmod +x "/app/scripts/deploy_website.sh"'
        sh "/app/scripts/deploy_website.sh"
      }
    }
  } 
}

