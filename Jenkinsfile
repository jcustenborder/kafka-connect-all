#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]


@NonCPS
def jobsToBuild() {
    def result = [
        'jcustenborder/kafka-connect-twitter/master',
        'jcustenborder/kafka-connect-simulator/master'
    ]

/*
    for(job in Jenkins.instance.getAllItems()) {
        def jobName = job.fullName
        if(jobName in excludeJobs) {
            continue
        }

        if(!(jobName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
            continue
        }

        echo "Adding ${jobName}"
        result << jobName
    }
*/

    return result
}

def jobs = jobsToBuild()
/*
def parallelSteps = [:]

for(jobName in jobs) {
    parallelSteps[jobName] = {
        build(jobName)
    }
}

parallel(parallelSteps)
*/

node {
    deleteDir()

    for(jobName in jobs) {
        step ([$class: 'CopyArtifact',
            projectName: jobName,
            filter: 'target/*.tar.gz']
        );
    }


    String baseImage = 'confluentinc/cp-kafka-connect:3.1.1-1'
    def text = "FROM ${baseImage}\n" +
            "MAINTAINER jcustenborder@gmail.com\n"

    sh 'ls -1 target/*.tar.gz > archives.txt'
    def archivesList = readFile('archives.txt').split("\\r?\\n")
    for (archivedFile in archivesList) {
        echo "ADD ${archivedFile}"
        text += "ADD ${archivedFile} /\n"
    }

    writeFile file: 'Dockerfile', text: text
    stash includes: 'Dockerfile', name: 'Dockerfile'
    archive 'Dockerfile'
    def image

    stage('docker') {
        image = docker.build("jcustenborder/kafka-connect-all")
    }

    image.push 'latest'
    image.push env.BUILD_NUMBER
}