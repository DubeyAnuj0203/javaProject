pipeline{
    agent any
    tools {
        maven 'mvn'
    }
    stages{
        stage ('Compiling the code'){
            steps {
                sh 'mvn clean compile'
            }
        }

        stage ('Package the code'){
            steps {
                sh 'mvn clean package'
            }
        }

        stage ('Build & Tag image'){
            steps {
                script {
                    withCredentials([string(credentialsId:'dockerCred', variable:'dockerCred')]){
                        sh 'docker login -u s3clock -p ${dockerCred}'
                        sh 'docker build -t s3clock/javaproject:2.0 .'
                    }
                }
            }
        }

        stage ('Pushing image to docker'){
            stages {
                sh 'docker push s3clock/javaproject:2.0'
            }
        }


    }
}