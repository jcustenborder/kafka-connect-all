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

    m = (jobName =~ /jcustenborder\/kafka-connect-(.+)\/master/)

    if(!m) {
        continue
    }

    def connectorName = m.group(1)


    parallelSteps[connectorName] = {
        build(jobName)
    }
}

parallel(parallelSteps)