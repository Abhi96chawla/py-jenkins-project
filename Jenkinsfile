pipeline {
    agent any
    stages {
        stage("Git CheckOut") {
            steps {
                echo "retrieving Code.."
                git 'https://github.com/Abhi96chawla/py-jenkins-project.git'
                sh 'sudo chmod 666 /var/run/docker.sock'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    echo "Job Name: ${env.JOB_NAME}"
                    sh "rm -rf ${env.WORKSPACE}/*"
                    sh """echo '
services:
  calculatorapp:
    image: "ragowe9292/python-calculator:latest"
    ports:
      - "8000:8000"
' > docker-compose.yaml"""
                    sh "docker-compose up"
                }
            }
        }
    }
}
