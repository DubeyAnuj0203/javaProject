pipeline {
    agent any
    tools {
            maven 'Apache Maven 3.9.3'
        }
    stages {
        stage('Example') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('test'){
            steps {
                sh 'mvn clean test'
            }
        }

        stage('package'){
            steps {
                sh 'mvn clean package'
            }
        }
    }
}