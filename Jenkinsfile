pipline {
    tools {
        maven 'apache-maven-3.9.3' }
    stages {
        stage ('compiling') { steps { sh 'mvn clean compile'} }
        stage ('test') { steps {sh 'mvn clean test'} }
        stage ('package') {steps {sh 'mvn clean package'} }
    }
}