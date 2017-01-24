#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

def parallelSteps = [:]

@NonCPS
def jobsToBuild() {
    def result = []

    for(job in Jenkins.instance.getAllItems()) {
        def jobName = job.fullName
        if(jobName in excludeJobs) {
            continue
        }

        if(!(jobName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
            continue
        }

        result << jobName
    }
}

for(jobName in jobsToBuild()) {
    parallelSteps[jobName] = {
        build(jobName)
    }
}

parallel(parallelSteps)