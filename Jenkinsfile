pipeline{
    agent any
    tools{
        maven 'local_maven'
    }

    stages{
         stage("clone code"){
            steps {
                echo "clone the code into github"
                git url:"https://github.com/Shiba07s/Student_Registration_App.git", branch:"main"
            }
            
        }
        stage ('Build'){
            steps{
                echo "successfully creating war file"
                sh 'mvn clean package'
            }
            post{
                success{
                    echo 'Archiving the Artifacts'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage ('Deploy on Tomcat server'){
            steps{
                echo "deploy to tomcat server"
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.53.124.64:9090/')], contextPath: null, war: '**/*.war'
            }

        }
    }
}
