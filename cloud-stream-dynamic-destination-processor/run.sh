
export JAVA_HOME=/Users/mapatel/.sdkman/candidates/java/17.0.6-tem

export SERVICE_NAME=cloud-stream-dynamic-destination-processor
export JAR_FILE=target/${SERVICE_NAME}-0.0.3-SNAPSHOT.jar
export OTEL_DEBUG=false
#export JCSMP_OTEL_EXT=/Users/mapatel/Downloads/solace-opentelemetry-jcsmp-integration-1.2.0-SOL-122765.38.jar
export JCSMP_OTEL_EXT=/Users/mapatel/.m2/repository/com/solace/solace-opentelemetry-jcsmp-integration/1.2.0-SNAPSHOT/solace-opentelemetry-jcsmp-integration-1.2.0-SNAPSHOT.jar
echo "java -javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar -Dotel.javaagent.extensions=${JCSMP_OTEL_EXT} -Dotel.traces.exporter=otlp -Dotel.javaagent.debug=${OTEL_DEBUG} -Dotel.metrics.exporter=none -Dotel.logs.exporter=none -Dotel.instrumentation.http-url-connection.enabled=false -Dotel.instrumentation.jaxrs-client.enabled=false -Dotel.instrumentation.log4j.enabled=false -Dotel.instrumentation.jms.enabled=true -Dotel.instrumentation.grpc.enabled=false -Dotel.exporter.otlp.protocol=grpc -Dotel.resource.attributes=service.name=${SERVICE_NAME} -Dotel.service.name=${SERVICE_NAME} -Dotel.propagators=solace_jcsmp_tracecontext -Dotel.exporter.otlp.endpoint=http://localhost:4317 -Dotel.bsp.schedule.delay=100 -Dotel.bsp.max.queue.size=2048 -Dotel.bsp.max.export.batch.size=5 -Dotel.bsp.export.timeout=10000 -Dsolace.java.host=tcp://localhost:55557 -Dotel.java.disabled.resource.providers=io.opentelemetry.instrumentation.resources.ProcessResourceProvider -jar ${JAR_FILE}"
java -javaagent:/Users/mapatel/Downloads/opentelemetry-javaagent.jar -Dotel.javaagent.extensions=${JCSMP_OTEL_EXT} -Dotel.traces.exporter=otlp -Dotel.javaagent.debug=${OTEL_DEBUG} -Dotel.metrics.exporter=none -Dotel.logs.exporter=none -Dotel.instrumentation.http-url-connection.enabled=false -Dotel.instrumentation.jaxrs-client.enabled=false -Dotel.instrumentation.log4j.enabled=false -Dotel.instrumentation.jms.enabled=true -Dotel.instrumentation.grpc.enabled=false -Dotel.exporter.otlp.protocol=grpc -Dotel.resource.attributes=service.name=${SERVICE_NAME} -Dotel.service.name=${SERVICE_NAME} -Dotel.propagators=solace_jcsmp_tracecontext -Dotel.exporter.otlp.endpoint=http://localhost:4317 -Dotel.bsp.schedule.delay=100 -Dotel.bsp.max.queue.size=2048 -Dotel.bsp.max.export.batch.size=5 -Dotel.bsp.export.timeout=10000 -Dsolace.java.host=tcp://localhost:55557 -Dotel.java.disabled.resource.providers=io.opentelemetry.instrumentation.resources.ProcessResourceProvider -jar ${JAR_FILE}
