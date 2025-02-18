package com.solace.samples.spring.scs;

import com.solace.samples.spring.scs.SensorReading.BaseUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.function.context.message.MessageUtils;
import org.springframework.cloud.stream.binder.BinderHeaders;
import org.springframework.cloud.stream.function.StreamBridge;
import org.springframework.integration.support.MessageBuilder;
import org.springframework.messaging.Message;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

  private static final Log logger = LogFactory.getLog(TestController.class);
  private final String baseDestination = "pub/sub";

  @Autowired
  private StreamBridge streamBridge;

  @GetMapping(value = "/temperature/publish/dynamic_topic/{location}/{temperature}")
  public String publishTemperatureDynamicTopic(
      @PathVariable("location") final String location,
      @PathVariable("temperature") final double temperature
  ) {
    com.solace.samples.spring.scs.SensorReading reading = new com.solace.samples.spring.scs.SensorReading();
    reading.setSensorID(location);
    reading.setTemperature(temperature);
    reading.setBaseUnit(BaseUnit.CELSIUS);

    logger.info("Emitting " + reading);

    /*Message<com.solace.samples.spring.scs.SensorReading> message = MessageBuilder
        .withPayload(reading)
        .setHeader(BinderHeaders.TARGET_DESTINATION, baseDestination + "/" + location)
        .build();*/

    Message<String> message = MessageBuilder
        .withPayload(reading.toString())
        .setHeaderIfAbsent(MessageUtils.TARGET_PROTOCOL, "solace")
        .setHeaderIfAbsent(BinderHeaders.TARGET_DESTINATION, baseDestination + "/" + location)
        .build();
    streamBridge.send("emitTemperatureSensorDynamic-out-0", message);

    return "Success!";
  }
}
