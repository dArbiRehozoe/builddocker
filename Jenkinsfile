pipeline{

	agent {label 'linux'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('darbi')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/dArbiRehozoe/builddocker.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t darbi/test:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push darbi/testpush:tagname'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
