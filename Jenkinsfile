node {
    def registryProjet='https://hub.docker.com/repository/docker/darbi/testpush/general'
    def IMAGE="testpush:version-${env.BUILD_ID}"
    def DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	 stage('Clone') {
            checkout scm
         }
 	def img =stage('Build') {
       	    docker.build("$IMAGE", '.')
        }
	 stage('Run') {
       	    img.withRun('-p 3001:88'){ c ->
    	    sh 'curl localhost'
       
        }
	stage('Login') {
		sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
	  }

	stage('Push') {
		sh 'docker push darbi/testpush:tagname'	
	}
}
}

