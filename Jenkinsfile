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
    if(!(job.fullName =~ /jcustenborder\/kafka-connect-(.+)\/master/)) {
        return
    }
    echo job.fullName
}