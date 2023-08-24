pipeline {
    agent any
    
    stages{
        stage("clone code"){
            steps {
                echo "clone the code into github"
                git url:"https://github.com/Shiba07s/Student_Registration_App.git", branch:"ldtech"
            }
            
        }
        stage ('Build'){
            steps{
                echo "successfully creating jar file"
                sh 'mvn clean package'
            }
        }
        stage("build code"){
            steps {
                echo "build image"
                sh "docker build -t ldtech-docker.jar ."
            }
            
        }
        stage("push to docker hub"){
            steps {
                 echo "Pushing the image to docker hub"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag ldtech-docker.jar ${env.dockerHubUser}/ldtech-docker.jar:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/ldtech-docker.jar:latest"
                }
                 
            }
            
        }
        stage("deploy"){
            steps {
                echo "deploy"
                sh "docker-compose down && docker-compose up -d"
               //sh "docker run -p 9095:9095 ldtech-docker.jar:latest"
            }
            
        }
        
    }
}
