#!/usr/bin/env groovy

node {

    // Recursively delete the current directory from the workspace
    deleteDir()

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

    stage ('Maven compile (dotnet restore and publish)') {
        // Microsoft .NET Core Shared Framework Host assertion
        sh 'dotnet | grep "Version  : 1.1.0"'
        // The above assertion should be build into the below, but it's not at present.
        sh 'mvn compile'
    }

    stage ('Maven site generate and deploy') {
        sh 'mvn site:site site:deploy'
    }

    stage ('Maven local docker image build and tag') {
        sh 'mvn clean package'
    }

    stage ('Local docker image smoke test') {
        sh 'chmod u+x local-run-n-smoke-test.sh'
        sh './local-run-n-smoke-test.sh'
    }

    stage ('Maven docker hub image push') {
        sh 'mvn deploy'
    }

    stage ('time.makaro.io pull and run') {
        sh 'chmod u+x snt-docker-deploy.sh'
        sh './snt-docker-deploy.sh'
    }

    stage ('time.makaro.io smoke test(s)') {
        // give the web application max 5s to start up
        sleep 5
        sh 'chmod u+x smoke-test.sh'
        sh './smoke-test.sh'
    }
}