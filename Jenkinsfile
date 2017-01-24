#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

def parallelSteps = [:]

for(job in Jenkins.instance.getAllItems()) {
    if(job.fullName in excludeJobs) {
        echo "${job.fullName} in excludeJobs."
        continue
    }

    m = (job.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/)

    if(!m) {
        echo "${job.fullName} doesn't match pattern."
        continue
    }

    echo "Processing ${m.group(1)}."
}