# magellan

## Application Installation

Create the application directory structure in the "/opt" directory:

```
> cd /opt
> mkdir magellan
> mkdir magellan/bin
> mkdir magellan/config
> mkdir magellan/keys
> mkdir magellan/log
```

Copy the appropriate version of the application package to the "./bin" directory and add a symbolic link:

```
> cp ~/magellan-x.x.x-RELEASE.jar ./bin/
> ln -s ./bin/magellan-x.x.x-RELEASE.jar ./bin/magellan.jar
```

Replace the "x.x.x" with the appropriate version number.

Create a script to run the application in the "./bin" directory with the following content:

```
#!/bin/bash
java -jar ./bin/magellan.jar
```

Create an "application.properties" configuration file in the "config" directory with the following content:

```
# Datasource configuration
spring.datasource.url=jdbc:postgresql://localhost:5432/magellan
spring.datasource.username=magellan
spring.datasource.password=[password]
spring.datasource.driverClassName=org.postgresql.Driver
spring.jpa.show-sql=false

# Schema versioning configuration
spring.liquibase.change-log=classpath:/db/changelog/db.changelog-master.xml

# SSL configuration
# server.ssl.key-store-type=PKCS12
# server.ssl.key-store=/opt/magellan/keys/keystore.p12
# server.ssl.key-store-password=[password]
# server.ssl.key-alias=[alias]

# Server configuration
server.port=8080

# Spring configuration
spring.codec.max-in-memory-size=2MB

# Logging configuration
#logging.file.path=/opt/magellan/log/

# Actuator endpoint configuration
management.endpoints.web.exposure.include=info, health
management.info.build.enabled=true

# Web crawling service configuration
service.url=https://app.scrapingbee.com/api/v1
service.key=[service key]
```

## PostgreSQL Database

Create a new database user role for the project:

```
> sudo su postgres
> createuser magellan -P --interactive
```

You will be prompted to enter and confirm a password for the new role:

```
Enter password for new role:
Enter it again:
```

And when prompted to decide if the new user should be a superuser:

```
Shall the new role be a superuser? (y/n) y
```

Then use the PostgreSQL CLI to create a database for the project:

```
> psql
# CREATE DATABASE magellan;
# quit
```

## Database Connection

Configure the database connection by modifying the "Datasource configuration" section in "application.properties". The
resulting connection section should look as below but with the appropriate details:

```
# Datasource configuration
spring.datasource.url=jdbc:postgresql://localhost:5432/magellan
spring.datasource.username=magellan
spring.datasource.password=[password]
spring.datasource.driverClassName=org.postgresql.Driver
spring.jpa.show-sql=false
```

Replace the password shown above in square brackets with the one entered when creating the database.

## SSL Configuration

A certificate and private key will be required in order to configure the application to run with secure communication. Once
you have a certificate, create the keystore as follows:

```
> openssl pkcs12 -export -in [certificate file] -inkey [private key file] -out ./keys/keystore.p12
```

Replace the certificate and private key filenames in the above as appropriate.

Once a keystore has been created, it can be configured for use by modifying the "SSL configuration" section in "
application.properties" as follows:

```
# SSL configuration
server.ssl.key-store-type=PKCS12
server.ssl.key-store=/opt/magellan/keys/keystore.p12
server.ssl.key-store-password=[password]
server.ssl.key-alias=[alias]

# Server configuration
server.port=8443
```

Replace the password and alias with the those used when creating the keystore.
