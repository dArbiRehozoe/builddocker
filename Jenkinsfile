node {
    def app
	 stage('Clone') {
            checkout scm
         }
 	stage('Build') {
       	    app=docker.build("darbi/minikube:tagname")
        }
	 stage('Run image') {
       	    docker.image("darbi/minikube:tagname").withRun('-p 8080:80'){ c ->
   	    sh 'docker ps'
    	    sh 'curl localhost'
       
        }
}
}

