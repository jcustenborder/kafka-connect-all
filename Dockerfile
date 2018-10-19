FROM confluentinc/cp-kafka-connect:5.0.0
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:0.1.0.10
