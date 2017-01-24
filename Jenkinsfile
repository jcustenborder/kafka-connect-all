#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

echo env.JOB_NAME

for(kafkaConnectJob in Jenkins.instance.getAllItems()) {
    if(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/ &&
        !env.JOB_NAME in excludeJobs) {




        echo kafkaConnectJob.fullName
    }
}