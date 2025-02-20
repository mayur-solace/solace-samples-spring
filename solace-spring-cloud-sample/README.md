

java -javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar \
-Dotel.javaagent.extensions=/path/to/solace-opentelemetry-jms-integration-1.x.x.jar \
-Dotel.traces.exporter=otlp \
-Dotel.javaagent.debug=true \
-Dotel.metrics.exporter=none \
-Dotel.logs.exporter=none \
-Dotel.instrumentation.http-url-connection.enabled=false \
-Dotel.instrumentation.jaxrs-client.enabled=false \
-Dotel.instrumentation.log4j.enabled=false \
-Dotel.instrumentation.jms.enabled=true \
-Dotel.instrumentation.grpc.enabled=false \
-Dotel.resource.attributes="service.name=SolaceJMSSender" \
-Dotel.propagators=solace_jms_tracecontext 
-jar ./target/autoconfig-sender-0.0.1-SNAPSHOT.jar


-Dotel.java.disabled.resource.providers=io.opentelemetry.instrumentation.resources.ProcessResourceProvider


-javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar \
-Dotel.javaagent.extensions=/Users/mapatel/.m2/repository/com/solace/solace-opentelemetry-jcsmp-integration/1.2.0-SNAPSHOT/solace-opentelemetry-jcsmp-integration-1.2.0-SNAPSHOT.jar
-Dotel.traces.exporter=otlp \
-Dotel.javaagent.debug=true \
-Dotel.metrics.exporter=none \ 
-Dotel.logs.exporter=none \
-Dotel.instrumentation.http-url-connection.enabled=false \
-Dotel.instrumentation.jaxrs-client.enabled=false \
-Dotel.instrumentation.log4j.enabled=false \
-Dotel.instrumentation.jms.enabled=true \
-Dotel.instrumentation.grpc.enabled=false \
-Dotel.exporter.otlp.protocol=grpc \ 
-Dotel.resource.attributes=service.name=JCSMP_Auto_Instrumentation \ 
-Dotel.service.name=JCSMP_Auto_Instrumentation \ 
-Dotel.propagators=solace_jcsmp_tracecontext \ 
-Dotel.exporter.otlp.endpoint=http://localhost:4317 \
-Dotel.bsp.schedule.delay=100 \
-Dotel.bsp.max.queue.size=2048 \ 
-Dotel.bsp.max.export.batch.size=5 \ 
-Dotel.bsp.export.timeout=10000 


-javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar -Dotel.javaagent.extensions=/Users/mapatel/.m2/repository/com/solace/solace-opentelemetry-jcsmp-integration/1.2.0-SNAPSHOT/solace-opentelemetry-jcsmp-integration-1.2.0-SNAPSHOT.jar -Dotel.traces.exporter=otlp -Dotel.javaagent.debug=true -Dotel.metrics.exporter=none -Dotel.logs.exporter=none -Dotel.instrumentation.http-url-connection.enabled=false -Dotel.instrumentation.jaxrs-client.enabled=false -Dotel.instrumentation.log4j.enabled=false -Dotel.instrumentation.jms.enabled=true -Dotel.instrumentation.grpc.enabled=false -Dotel.exporter.otlp.protocol=grpc -Dotel.resource.attributes=service.name=JCSMP_Auto_Instrumentation -Dotel.service.name=JCSMP_Auto_Instrumentation -Dotel.propagators=solace_jcsmp_tracecontext -Dotel.exporter.otlp.endpoint=http://localhost:4317 -Dotel.bsp.schedule.delay=100 -Dotel.bsp.max.queue.size=2048 -Dotel.bsp.max.export.batch.size=5 -Dotel.bsp.export.timeout=10000



## Build Application: 
export JAVA_HOME=/Users/mapatel/.sdkman/candidates/java/17.0.6-tem  && export PATH=$JAVA_HOME/bin:$PATH  && mvn clean install -DskipTests -Dmaven.test.skip=true



## command to run application
java -javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar -Dotel.javaagent.extensions=/Users/mapatel/.m2/repository/com/solace/solace-opentelemetry-jcsmp-integration/1.2.0-SNAPSHOT/solace-opentelemetry-jcsmp-integration-1.2.0-SNAPSHOT.jar -Dotel.traces.exporter=otlp -Dotel.javaagent.debug=true -Dotel.metrics.exporter=none -Dotel.logs.exporter=none -Dotel.instrumentation.http-url-connection.enabled=false -Dotel.instrumentation.jaxrs-client.enabled=false -Dotel.instrumentation.log4j.enabled=false -Dotel.instrumentation.jms.enabled=true -Dotel.instrumentation.grpc.enabled=false -Dotel.exporter.otlp.protocol=grpc -Dotel.resource.attributes=service.name=JCSMP_Auto_Instrumentation -Dotel.service.name=JCSMP_Auto_Instrumentation -Dotel.propagators=solace_jcsmp_tracecontext -Dotel.exporter.otlp.endpoint=http://localhost:4317 -Dotel.bsp.schedule.delay=100 -Dotel.bsp.max.queue.size=2048 -Dotel.bsp.max.export.batch.size=5 -Dotel.bsp.export.timeout=10000 -Dsolace.java.host=tcp://localhost:55557 -Dotel.java.disabled.resource.providers=io.opentelemetry.instrumentation.resources.ProcessResourceProvider -jar target/solace-spring-cloud-sample-0.0.3-SNAPSHOT.jar




