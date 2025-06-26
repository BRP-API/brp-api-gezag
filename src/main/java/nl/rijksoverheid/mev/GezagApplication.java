package nl.rijksoverheid.mev;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.context.annotation.FullyQualifiedAnnotationBeanNameGenerator;

/**
 * Springboot applicatie
 */
@ConfigurationPropertiesScan
@SpringBootApplication(
    nameGenerator = FullyQualifiedAnnotationBeanNameGenerator.class
)
public class GezagApplication {

    /**
     * Start de gezag applicatie als spring applicatie
     *
     * @param args argumenten voor de applicatie
     */
    public static void main(final String[] args) {
        SpringApplication.run(new Class[]{GezagApplication.class}, args);
    }
}
