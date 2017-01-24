#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

echo env.JOB_NAME

Jenkins.instance.getAllItems().eachJob { job ->
    if(!(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
        return
    }
    if(env.JOB_NAME in excludeJobs) {
        return
    }

    echo kafkaConnectJob.fullName
}
