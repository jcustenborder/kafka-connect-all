#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

def parallelSteps = [:]

for(job in Jenkins.instance.getAllItems()) {
    def jobName = job.fullName
    if(jobName in excludeJobs) {
        continue
    }

    if(!(jobName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
        continue
    }

    def connectorName = m.group(1)

    parallelSteps[jobName] = {
        build(jobName)
    }
}

parallel(parallelSteps)