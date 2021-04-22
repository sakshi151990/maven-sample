pipeline { 
    agent {
     docker {
        image: 'maven:3.8.1-adoptopenjdk-11'
        args: '-v /root/.m2:/root/.m2'
    }  
    stages { 
        stage('SCM Checkout') { 
             git url: 'https://github.com/sakshi151990/maven-sample.git'
        }
        stage('Compile') { 
            steps { 
               sh 'mvn -B -DskipTests clean compile'
            }  
        }
        stage('Test') { 
            steps { 
               sh 'mvn -B -DskipTests test'
           }   
        }
    }
  }
}
