currentBuild.displayName="Myproject#"+currentBuild.number
pipeline {
    agent any
    triggers {
    cron('0 */6 * * *')
    }
    stages {
        stage('Docker Image Creation') {
            steps {
                sh "sudo docker build -t satyendra207/tomcat:${BUILD_NUMBER} ."
                sh "sudo docker run -t -p 8090:8080 satyendra207/tomcat:${BUILD_NUMBER}"
            }
	}
       
    }
}
