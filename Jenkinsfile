pipeline {
    agent any
    
    tools{
        maven 'local_maven'
    }

    
    stages {
        stage('Checkout') {
            steps {
                echo "Checkout source code from Git repository"
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo "Build the Spring Boot application using Maven"
                sh "${env.MAVEN_HOME}/bin/mvn clean package"
            }
        }
        
        // stage('Code Quality') {
        //     steps {
        //         script {
        //             def scannerHome = tool name: 'SonarQube', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
                    
        //             withSonarQubeEnv('SonarQube') {
        //                 sh "${scannerHome}/bin/sonar-scanner"
        //             }
        //         }
        //     }
        // }
        
        stage('Security Scan') {
            steps {
                echo "Run OWASP Dependency-Check security scanning"
               // sh "mvn org.owasp:dependency-check-maven:check"
            }
        }
        
        stage('Deploy') {
            steps {
                echo "Deploy the Spring Boot application to the desired environment"
                // Example: deploy to a server, container, or cloud service
            }
        }
    } 
}
