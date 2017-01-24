#!groovy

import jenkins.model.*

excludeJobs = [
    'kafka-connect-packaging',
]

echo jobName

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    if(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/) {
        echo kafkaConnectJob.fullName
    }
}