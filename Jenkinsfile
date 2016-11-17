#!/usr/bin/env groovy

node {

    /**
    * The below assumes that you have named your Maven installation as M3 in Jenkins.
    * See: Jenkins >> Manage Jenkins >> Global Tool Configuration
    */
    def mvnHome = tool 'M3'
    env.PATH = "${mvnHome}/bin:${env.PATH}"
    
    stage 'Maven compile (dotnet restore and publish)'
        git url: "https://github.com/nicodewet/webtime.git"
        sh 'mvn compile'
    
    stage 'Maven site generate and deploy'
        git url: "https://github.com/nicodewet/webtime.git"
        sh 'mvn site:site site:deploy'
        
}