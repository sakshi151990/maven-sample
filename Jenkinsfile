pipeline { 
      agent { docker {
    args '-v /root/.m2:/root/.m2'
    image 'maven:3.8.1-adoptopenjdk-11'
             }
          }
    
    stages { 
        stage('SCM Checkout') { 
            steps {
             git url: 'https://github.com/sakshi151990/maven-sample.git'
            }
        }
        stage('Compile') {    
        
            steps { 
               sh 'mvn -B -DskipTests clean compile'
            }  
        }
        stage('Test') { 
          
            steps { 
               sh 'mvn test'
           }   
        }
        stage('Package') { 
          
            steps { 
               sh 'mvn package'
           }   
        }
        stage ('Invoke_pipeline') {
            steps {
                build job: 'codepipeline'
            }
        }   
    }
}
