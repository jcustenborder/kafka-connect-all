#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

@NonCPS
def jobs(jobRegexp) {
  Jenkins.instance.getAllItems()
         .grep { it.name ==~ ~"${jobRegexp}"  }
         .collect { [ name : it.name.toString(),
                      fullName : it.fullName.toString() ] }
}

kafkaConnectJobs = jobs('^kafka-connect-')

for(kafkaConnectJob: kafkaConnectJobs) {
    echo kafkaConnectJob.fullName
}