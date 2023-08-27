pipeline{
    agent any
    // environment {
    //    // JAVA_HOME = tool name: 'JDK8', type: ' https://download.oracle.com/otn/java/jdk/8u221-b11/230deb18db3e4014bb8e3e8324f81b43/jdk-8u221-linux-x64.tar.gz'
    //     TOMCAT_HOME = '/var/lib/tomcat9'
    // }
    tools{
        maven 'local_maven'
    }
     
    stages{
         stage("clone code"){
            steps {
                echo "clone the code into github"
                git url:"https://github.com/Shiba07s/Student_Registration_App.git", branch:"devops"
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
        stage('Deploy') {
            steps {
                 deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://16.171.38.164:8090/')], contextPath: '', war: '**/*.war'
            }
        }
        // stage('Deploy') {
        //     steps {
        //         script {
        //             def warFilePath = "${workspace}/target/Registration_Application-1-0.0.1-SNAPSHOT.war.original"
        //             def tomcatWebapps = "${TOMCAT_HOME}/webapps"
                    
        //             sh "cp ${warFilePath} ${tomcatWebapps}/"
        //         }
        //     }
        // }
    //     stage('Restart Tomcat') {
    //         steps {
    //             script {
    //                 sh "${TOMCAT_HOME}/bin/shutdown.sh"
    //                 sleep 10
    //                 sh "${TOMCAT_HOME}/bin/startup.sh"
    //             }
    //         }
    //     }
     }
       // stage('Deploy') {
       //     steps {
       //         echo "deploying on Tomcat Server"
       //         sh 'cp -r target/Registration_Application-1-0.0.1-SNAPSHOT.war /opt/tomcat/webapps'
       //         deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.51.171.67:8090/')], contextPath: '/opt/tomcat/', war: '**/*.war'
                 
       //      }
       //  }

    //     stage('Deploy') {
    //         steps {
    //             // Copy the generated WAR file to the Tomcat webapps directory
    //             sh 'cp -r target/Registration_Application-1-0.0.1-SNAPSHOT.war /opt/tomcat/webapps'
                
    //             // Restart Tomcat to deploy the application
    //             sh '/opt/tomcat/bin/shutdown.sh'
    //             sh '/opt/tomcat/bin/startup.sh'
                
    //             // Wait for Tomcat to start
    //             sleep(time: 30, unit: 'SECONDS')
    //         }
    //     }
    // } 
     // post {
     //    always {
     //        // Clean up temporary artifacts or perform any necessary post-deployment tasks
     //        sh 'rm -rvf target/Registration_Application-1-0.0.1-SNAPSHOT.war /opt/tomcat/webapps'

     //    }
     // } 
}
