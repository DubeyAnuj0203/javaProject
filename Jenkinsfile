pipeline {
    agent any
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