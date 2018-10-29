FROM confluentinc/cp-kafka-connect:5.0.0
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:0.0.2.4
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-solr:0.1.27
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:0.1.0.26
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:0.1.0.12
