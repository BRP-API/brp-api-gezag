import io.freefair.gradle.plugins.lombok.tasks.LombokTask
import org.springframework.boot.gradle.tasks.bundling.BootBuildImage

plugins {
    application
    id("com.github.spotbugs") version "6.0.21"
    id("io.freefair.lombok") version "8.10"
    id("org.jooq.jooq-codegen-gradle") version "3.19.11"
    id("org.openapi.generator") version "7.8.0"
    id("org.owasp.dependencycheck") version "10.0.3"
    id("org.springframework.boot") version "3.3.3"
}

repositories {
    mavenLocal()
    maven {
        url = uri("https://repo.maven.apache.org/maven2/")
    }
}

dependencies {
    implementation(platform(org.springframework.boot.gradle.plugin.SpringBootPlugin.BOM_COORDINATES))

    implementation(libs.org.apache.commons.commons.lang3)
    implementation(libs.com.fasterxml.jackson.dataformat.jackson.dataformat.yaml)
    implementation(libs.org.openapitools.jackson.databind.nullable)
    implementation(libs.org.springframework.boot.spring.boot.starter.actuator)
    implementation(libs.org.springframework.boot.spring.boot.starter.cache)
    implementation(libs.org.springframework.boot.spring.boot.starter.jooq)
    implementation(libs.org.springframework.boot.spring.boot.starter.web)
    implementation(libs.org.springframework.boot.spring.boot.starter.webflux)
    implementation(libs.org.springframework.boot.spring.boot.starter.validation)
    implementation(libs.co.elastic.logging.logback.ecs.encoder)
    implementation(libs.org.json.json)
    implementation(libs.io.micrometer.micrometer.registry.prometheus)
    runtimeOnly(libs.org.postgresql.postgresql)
    testImplementation(libs.org.springframework.boot.spring.boot.starter.test)
    testImplementation(libs.com.opencsv.opencsv)

    jooqCodegen(libs.org.postgresql.postgresql)
}

application {
    mainClass = "nl.rijksoverheid.mev.GezagApplication"
}

jooq {
    configuration {
        jdbc {
            driver = "org.postgresql.Driver"
            url = "jdbc:postgresql:rvig_brp_api_testdata"
            user = "root"
            password = "root"
        }
        generator {
            name = "org.jooq.codegen.DefaultGenerator"
            database {
                inputSchema = "public"
                includes = """
                    lo3_pl_persoon
                    | lo3_pl_verblijfplaats
                    | lo3_pl_gezagsverhouding
                    | lo3_pl
                """.trimIndent()
            }
            target {
                packageName = "nl.rijksoverheid.mev.brp.brpv.generated"
                directory = "src/main/java"
            }
        }
    }
}

openApiGenerate {
    generatorName = "spring"
    inputSpec = "${projectDir}/src/main/resources/brp-api-gezag.yaml"

    configOptions.put("delegatePattern", "true")
    configOptions.put("documentationProvider", "none")
    configOptions.put("implicitHeaders", "true")
    configOptions.put("useOptional", "true")
    configOptions.put("useSpringBoot3", "true")
    configOptions.put("useTags", "true")
}

sourceSets {
    main {
        java {
            srcDir("${layout.buildDirectory.get()}/generate-resources/main/src/main/java")
        }
    }
}

group = "nl.rijksoverheid.mev"
version = "1.6.0"
description = "gezag"
java.sourceCompatibility = JavaVersion.VERSION_21

tasks.withType<BootBuildImage> {
    builder = "dashaun/builder:tiny"
}

tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"

    dependsOn("openApiGenerate")
}

tasks.withType<Javadoc> {
    options.encoding = "UTF-8"
}

tasks.withType<LombokTask> {
    mustRunAfter("openApiGenerate")
}

tasks.withType<Test> {
    useJUnitPlatform()
}