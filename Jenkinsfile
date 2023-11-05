pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			sh "docker build -t node-js-sample ."
			sh "bash./shellscript.sh"
			}
		}
  		stage('Deploy') {
			steps {
			sh "docker run --name node-js-sample -itd node-js-sample ."
			}
		}
	}
}
