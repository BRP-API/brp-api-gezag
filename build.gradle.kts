import io.freefair.gradle.plugins.lombok.tasks.LombokTask
import org.openapitools.generator.gradle.plugin.tasks.GenerateTask
import org.springframework.boot.gradle.tasks.bundling.BootBuildImage
import java.io.ByteArrayOutputStream
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

plugins {
    application
//    id("com.github.spotbugs") version "6.0.21"
    id("io.freefair.lombok") version "8.11"
    id("org.jooq.jooq-codegen-gradle") version "3.19.15"
    id("org.openapi.generator") version "7.10.0"
//    id("org.owasp.dependencycheck") version "10.0.3"
    id("org.sonarqube") version "6.1.0.5360"
    id("org.springframework.boot") version "3.4.1"
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
    implementation(libs.org.springframework.boot.spring.boot.starter.jooq)
    implementation(libs.org.springframework.boot.spring.boot.starter.web)
    implementation(libs.org.springframework.boot.spring.boot.starter.webflux)
    implementation(libs.org.springframework.boot.spring.boot.starter.validation)
    implementation(libs.net.logstash.logback.logstash.logback.encoder)

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
                    lo3_titel_predicaat
                    | lo3_pl
                    | lo3_pl_gezagsverhouding
                    | lo3_pl_persoon
                    | lo3_pl_verblijfplaats
                """.trimIndent()
            }
            target {
                packageName = "nl.rijksoverheid.mev.brp.brpv.generated"
                directory = "src/main/java"
            }
        }
    }
}

sourceSets {
    main {
        java {
            srcDir("${layout.buildDirectory.get()}/generate-resources/openapi/v1/src/main/java")
            srcDir("${layout.buildDirectory.get()}/generate-resources/openapi/v2/src/main/java")
        }
    }
}

group = "nl.rijksoverheid.mev"
version = "1.7.0-snapshot"
description = "Het gezag component van BRP-API"
java.sourceCompatibility = JavaVersion.VERSION_21

val nonSnapshotVersion = project.version.toString().removeSuffix("-snapshot")
val timestamp: String = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"))
val customVersion = "$nonSnapshotVersion-$timestamp"

tasks.withType<BootBuildImage> {
    builder.set("paketobuildpacks/builder-jammy-buildpackless-tiny")
    buildpacks.add("docker.io/paketobuildpacks/java")

    imageName.set("ghcr.io/brp-api/${project.name}:latest")
    tags.set(listOf(
        "ghcr.io/brp-api/${project.name}:${project.version}",
        "ghcr.io/brp-api/${project.name}:$customVersion",
        "ghcr.io/brp-api/${project.name}:${getGitHash()}",
    ))

    docker {
        publishRegistry {
            username.set(System.getenv("GITHUB_ACTOR"))
            password.set(System.getenv("GITHUB_TOKEN"))
        }
    }
}

sonar {
    properties {
        property("sonar.cpd.exclusions", listOf(
            "**/*Persoon.java",
            "**/*Ouder1.java",
            "**/*Ouder2.java",
        ))
        property("sonar.host.url", "https://sonarcloud.io")
        property("sonar.organization", "brp-api")
        property("sonar.projectKey", "BRP-API_brp-api-gezag")
        property("sonar.coverage.exclusions", "/src/main/java/**.java")
    }
}

springBoot {
    buildInfo {
        properties {
            additional = mapOf(
                "customVersion" to customVersion
            )
        }
    }
}

openApiGenerate {
    generatorName = "spring"
    inputSpec = "${projectDir}/src/main/resources/brp-api-gezag.yaml"
    outputDir = "${buildDir}/generate-resources/openapi/v1"

    configOptions.put("apiPackage", "nl.rijksoverheid.mev.web.api.v1")
    configOptions.put("configPackage", "nl.rijksoverheid.mev.web.api.v1.configuration")
    configOptions.put("invokerPackage", "nl.rijksoverheid.mev.web.api.v1")
    configOptions.put("modelPackage", "nl.rijksoverheid.mev.web.api.v1")
    configOptions.put("packageName", "nl.rijksoverheid.mev.web.api.v1")

    configOptions.put("delegatePattern", "true")
    configOptions.put("documentationProvider", "none")
    configOptions.put("implicitHeaders", "true")
    configOptions.put("useOptional", "true")
    configOptions.put("useSpringBoot3", "true")
    configOptions.put("useTags", "true")
    configOptions.put("useSwaggerUI", "false")
}

tasks.register<GenerateTask>("openApiGenerate2") {
    description = "Generates the Spring Boot implementation of an OpenAPI Specification"
    group = "build"

    generatorName = "spring"
    inputSpec = "${projectDir}/src/main/resources/brp-api-gezag-2.0.yaml"
    outputDir = "${buildDir}/generate-resources/openapi/v2"

    configOptions.put("apiPackage", "nl.rijksoverheid.mev.web.api.v2")
    configOptions.put("configPackage", "nl.rijksoverheid.mev.web.api.v2.configuration")
    configOptions.put("invokerPackage", "nl.rijksoverheid.mev.web.api.v2")
    configOptions.put("modelPackage", "nl.rijksoverheid.mev.web.api.v2")
    configOptions.put("packageName", "nl.rijksoverheid.mev.web.api.v2")

    configOptions.put("delegatePattern", "true")
    configOptions.put("documentationProvider", "none")
    configOptions.put("useOptional", "true")
    configOptions.put("useSpringBoot3", "true")
    configOptions.put("useTags", "true")
    configOptions.put("useSwaggerUI", "false")
}

tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"

    dependsOn("openApiGenerate", "openApiGenerate2")
}

tasks.withType<Javadoc> {
    options.encoding = "UTF-8"
}

tasks.withType<LombokTask> {
    mustRunAfter("openApiGenerate", "openApiGenerate2")
}

tasks.withType<Test> {
    useJUnitPlatform()
}

fun getGitHash(): String {
    val stdout = ByteArrayOutputStream()
    exec {
        commandLine = listOf("git", "rev-parse", "HEAD")
        standardOutput = stdout
    }
    return stdout.toString().trim()
}
