#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

kafkaConnectJobs = jobs('^kafka-connect-')

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    echo kafkaConnectJob.fullName
}