pipline{
    stages{
        stage ('version'){
            steps {
                "sh java --version"}
        }

        stage ('code compilation'){
                steps {
                    "sh mvn clean compile"}
        }

        stage ('code test'){
            steps {
                "sh mvn clean test"}
        }

        stage ('code package'){
            steps {
                "sh mvn clean package"}
        }
    }
}