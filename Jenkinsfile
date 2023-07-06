pipeline {
    agent any
    tools {
          'Custom Maven' '/opt/apache-maven-3.8.8/bin'
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