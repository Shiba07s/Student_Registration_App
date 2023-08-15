pipeline {
    agent any
    
    environment {
        // Define environment variables here if needed
        MAVEN_HOME = tool name: 'Maven', type: 'maven'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from Git repository
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Build the Spring Boot application using Maven
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
    
    post {
        always {
            // Clean up or post-build actions
        }
        success {
            // Actions to perform on successful build and deployment
        }
        failure {
            // Actions to perform if the build or deployment fails
        }
    }
}
