pipeline {
    agent any
    tools {
        maven 'Maven-3.8.8'
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