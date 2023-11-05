pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			sh "docker build -t node-js-sample ."
			
			}
		}
  		stage('Deploy') {
			steps {
			sh "bash ./shellscript.sh"
			sh "docker run --name node-js-sample -itd node-js-sample ."
			}
		}
	}
}
