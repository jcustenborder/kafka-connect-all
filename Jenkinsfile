#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

echo env.JOB_NAME

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    if(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/) {
        continue
    }
    if(kafkaConnectJob.fullName == env.JOB_NAME) {
        continue
    }

    echo kafkaConnectJob.fullName
}