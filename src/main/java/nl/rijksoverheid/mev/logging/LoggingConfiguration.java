package nl.rijksoverheid.mev.logging;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.RequestScope;
import tools.jackson.databind.json.JsonMapper;

@Configuration
public class LoggingConfiguration {

    @Bean
    @RequestScope
    public LoggingContext loggingContext() {
        return new LoggingContext();
    }

    @Bean
    public LoggingFilter loggingFilter(JsonMapper.Builder jsonMapperBuilder) {
        return new LoggingFilter(jsonMapperBuilder);
    }
}
