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

        stage ('Login In docker'){
            steps {
                script {
                    withCredentials([string(credentialsId:'dockerCred', variable:'dockerCred')]){
                        sh 'docker login -u s3clock -p ${dockerCred}'
                        sh 'docker build -t s3clock/javaproject .'
                        sh 'docker push s3clock/javaproject:0.0.1'
                    }
                }
            }
        }
    }
}