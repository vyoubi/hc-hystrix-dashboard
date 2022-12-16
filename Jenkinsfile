pipeline {
    agent any
    tools {
        maven 'MAVEN-3.8.4'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/vyoubi/hc-hystrix-dashboard']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
                sh 'docker version'
                sh 'docker build -t valere1991/hc-hystrix-dashboard .'
                sh 'docker image list'
            }
        }
        stage('Docker Hub login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'Dockerhub-Val', passwordVariable: 'password', usernameVariable: 'username')]) {
                sh 'docker login -u $username -p $password'
                }
            }
        }
        stage('Push image to Docker Hub') {
            steps {
                sh 'docker push valere1991/hc-hystrix-dashboard'
            }
        }
        stage("remove unused docker image"){
            steps{
            sh 'docker rmi hc-hystrix-dashboard -f'
            sh 'docker rmi valere1991/hc-hystrix-dashboard -f'
         }
        }

    }
}
