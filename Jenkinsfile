#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

def parallelSteps = [:]

for(job in Jenkins.instance.getAllItems()) {
    if(job.fullName in excludeJobs) {
        continue
    }

    m = (job.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/)

    if(!m) {
        continue
    }

    def connectorName = m.group(1)


    parallelSteps[connectorName] = {
        build(job.fullName)
    }
}

parallel(parallelSteps)