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
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.53.124.64:9090/')], contextPath: null, war: '**/*.war'
            }

        }

    //     stage('Deploy') {
    //         steps {
    //             // Copy the generated WAR file to the Tomcat webapps directory
    //             sh 'cp -r target/ Registration_Application-1-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps'
                
    //             // Restart Tomcat to deploy the application
    //             sh '/var/lib/tomcat9/bin/shutdown.sh'
    //             sh '/var/lib/tomcat9/bin/startup.sh'
                
    //             // Wait for Tomcat to start
    //             sleep(time: 30, unit: 'SECONDS')
    //         }
    //     }
    // } 
    // post {
    //     always {
    //         // Clean up temporary artifacts or perform any necessary post-deployment tasks
    //         sh 'rm -rvf target/ Registration_Application-1-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps'

    //     }
    // }
    }

}
