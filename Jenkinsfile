node {
    def app
	 stage('Clone') {
            checkout scm
         }
 	stage('Build') {
       	    app=docker.build("darbi/minikube:tagname")
        }
	 stage('Run image') {
       	    docker.image("darbi/minikube:tagname").withRun('-p 3001:88'){ c ->
   	    sh 'docker ps'
    	    sh 'curl localhost'
       
        }
}
}

