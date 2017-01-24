#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    echo kafkaConnectJob.fullName
}