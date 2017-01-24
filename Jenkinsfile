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

def parallelSteps = [:]

for(jobName in jobsToBuild()) {
    parallelSteps[jobName] = {
        build(jobName)
    }
}

parallel(parallelSteps)