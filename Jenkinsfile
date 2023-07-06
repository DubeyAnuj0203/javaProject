pipeline {
    agent any
    tools {
       maven 'Apache Maven 3.5.4'
    }
    stages {
        stage('compiling') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('test') {
            steps {
                sh 'mvn clean test'
            }
        }

        stage('package') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}