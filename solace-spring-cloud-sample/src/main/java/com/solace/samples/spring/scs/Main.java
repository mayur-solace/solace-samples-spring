package com.solace.samples.spring.scs;

import io.opentelemetry.exporter.otlp.trace.OtlpGrpcSpanExporter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@SpringBootApplication
public class Main {

  @Bean
  public OtlpGrpcSpanExporter otlpHttpSpanExporter(@Value("${tracing.url}") String url) {
    return OtlpGrpcSpanExporter.builder().setEndpoint(url).build();
  }

  public static void main(String[] args) {
    SpringApplication.run(Main.class, args);
  }
}