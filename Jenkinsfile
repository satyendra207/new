currentBuild.displayName="Myproject#"+currentBuild.number
pipeline {
    agent any

    triggers {
    cron('0 */6 * * *')
    }
    stages {
        stage('Docker Image Creation') {
            steps {
                // Image creation
                docker build -t satyendra207/tomcat:${BUILD_NUMBER} .
                docker run -it satyendra207/tomcat:${BUILD_NUMBER} -p 8090:8080
            }
		    }
       
    }
}