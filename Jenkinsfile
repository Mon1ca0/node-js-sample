pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			sh "sudo docker build -t node-js-sample ."
			}
		}
  		stage('Deploy') {
			steps {
			sh "sudo docker run --name node-js-sample -itd -p 80:80 node-js-sample"
			}
		}
	}
}
