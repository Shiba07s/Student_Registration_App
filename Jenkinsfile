pipeline{
    agent any
    tools{
        maven 'local_maven'
    }

    stages{
        stage ('Build'){
            steps{
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
                deploy adapters: [tomcat9(credentialsId: 'ecf45f53-e6b5-4bea-a18b-c5128a544371', path: '', url: 'http://16.171.22.140:8090/')], contextPath: null, war: '**/*.war'
            }

        }
    }
}
