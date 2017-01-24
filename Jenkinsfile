#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

echo env.JOB_NAME

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    if(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/) {
        echo kafkaConnectJob.fullName
    }
}