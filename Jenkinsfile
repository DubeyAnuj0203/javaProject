pipline {
    agent any
    tools {
        maven 'maven-3.9.3'
    }
    stages {
        stage('compiling') {
            steps {
                sh 'mvn clean compile'
            }
        }
    }
}