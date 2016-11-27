#!/usr/bin/env groovy

node {

    /**
    * The below assumes that you have named your Maven installation as M3 in Jenkins.
    * See: Jenkins >> Manage Jenkins >> Global Tool Configuration
    */
    def mvnHome = tool 'M3'
    env.PATH = "${mvnHome}/bin:${env.PATH}"

    /**
    * The DOCKER_HOST environment variable is required by the docker-maven-plugin
    */
    env.DOCKER_HOST = "tcp://127.0.0.1:2375"
    
    git url: "https://github.com/nicodewet/webtime.git"

    // stage ('Maven compile (dotnet restore and publish)') {
    //     sh 'mvn compile'
    // }

    // stage ('Maven site generate and deploy') {
    //     sh 'mvn site:site site:deploy'
    // }

    // stage ('Maven local docker image build and tag') {
    //     sh 'mvn package'
    // }

    // stage ('Maven docker hub image push') {
    //     sh 'mvn deploy'
    // }

    stage ('Show n tell docker deploy') {
        sh 'snt-docker-deploy.sh'
    }
}