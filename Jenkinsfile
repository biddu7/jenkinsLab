pipeline {
    agent any

    environment {
       IMAGE = 'japp'
       PASS = credentials('Docker_PSW')
    }    

    stages {

        stage('build') {
            steps {
                sh '''
                    ./scripts/mvn_build.sh mvn -B -DskipTests clean package
                    ./scripts/build.sh
                   '''    
            }
        }

        stage('test') {
            steps {
                sh ' ./scripts/mvn_test.sh mvn test  '
                    
            }
        }

        stage('push') {
            steps {
                sh '''
                    ./scripts/push.sh
                '''
            }
        }

        stage('deploy') {
            steps {
                sh '''
                    ./scripts/deploy.sh
                '''
            }
        }

    }
}

