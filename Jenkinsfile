#!groovy

import jenkins.model.*

excludeJobs = [
    'jcustenborder/kafka-connect-all/master',
    'jcustenborder/kafka-connect-packaging/master'
]

for(job in Jenkins.instance.getAllItems()) {
    if(job.fullName in excludeJobs) {
        continue
    }
    if(!(kafkaConnectJob.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
        return
    }
    echo kafkaConnectJob.fullName
}