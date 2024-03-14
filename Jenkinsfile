pipeline{
    agent any
    environment {
        dockerhubCredentials = 'dockerhub'
        dockerImageTag = "salman1091/user-webapp:v1"
    }
    tools{
        maven "maven_3_9_4"
    }
    stages{
        stage('Packaging Application into Jar with Maven'){
            steps{
                script{
                    checkout scmGit(branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-credentials', url: 'https://github.com/salman0909/usermgmt-webapp.git']])
                    sh 'mvn clean install'
                }
            }
        }
        stage('Building Docker Image'){
            steps{
                script{
                    sh 'docker build -t $dockerImageTag .'
                }
            }
        } 
        stage('Pushing Docker image to DockerHub'){
            steps{
                script{
                    docker.withRegistry('', dockerhubCredentials) {
                        sh 'docker push $dockerImageTag'
                    }
                }
            }
        }
        stage('Running the Container'){
            steps{
                script{
                    sh 'docker run -d -p 8081:8081 --name user-webapp $dockerImageTag'
                }
            }
        }
        stage('Deploying the webapp into k8s'){
            steps{
                sh 'kubectl apply -f web-deployment.yml'
                sh 'kubectl get deployments'
                sh 'kubectl describe deployment webapp-deployment'
                sh 'kubectl apply -f webapp-service.yml'
                sh 'kubectl get services'
            }
        }           
    }
}
