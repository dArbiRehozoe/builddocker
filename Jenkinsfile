node {
    def registryProjet='https://hub.docker.com/repository/docker/darbi/testpush/general'
    def IMAGE="testpush:version-${env.BUILD_ID}"
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
	  stage('Push') {
       	    withDockerRegistry([ credentialsId: "darbi", url: "https://hub.docker.com/repository/docker/darbi/testpush" ]) { 
    	    img.push 'latest'
	    img.push()  
        }
}
}
}
