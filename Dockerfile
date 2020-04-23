FROM confluentinc/cp-server-connect-operator:5.5.0.0
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"
RUN confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:0.0.2.11
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-flume-avro:0.2.8
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:2.0.43
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-simulator:0.1.120
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:0.2.3
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-memcached:0.1.0.12
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:0.3.33
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-fix:0.1.0.1
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-aerospike:0.2.4
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-maxmind:0.1.0.10
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-solr:0.1.34
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:0.1.0.35
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:0.1.0.18
