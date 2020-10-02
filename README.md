# FireSat Example

[![Gitpod](https://img.shields.io/badge/gitpod-open-blue?logo=gitpod)](https://gitpod.io/#https://github.com/opencaesar/firesat-example) 
[![Build Status](https://travis-ci.org/opencaesar/firesat-example.svg?branch=master)](https://travis-ci.org/opencaesar/firesat-example)
[ ![Download](https://api.bintray.com/packages/opencaesar/ontologies/firesat-example/images/download.svg) ](https://bintray.com/opencaesar/ontologies/firesat-example/_latestVersion)

This is a description of a FireSat project expressed in [OML](https://github.com/opencaesar/oml)

## Clone
```
  git clone https://github.com/opencaesar/firesat-example.git
  cd firesat-example
```

## Build
Equivalent to owlReason task
```
./gradlew build
```

## Generate Docs
You must first have Bikeshed (the app itself) installed from [here](https://tabatkins.github.io/bikeshed/#install-final)
```
./gradlew generateDocs
```

## Run OWL Reasoner
```
./gradlew owlReason
```

## Load to Fuseki Dataset
```
./gradlew owlLoad
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see below)  

## Run SPARQL Queries
```
./gradlew owlQuery
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see below)  

## Run SHACL Rules
```
./gradlew owlShacl
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see below) 

## Publish to Maven Local
```
./gradlew publishToMavenLocal
```

## Run Fuseki Locally
Download the [Apache Jena Fuseki](https://jena.apache.org/download/index.cgi) distribution and run the server locally using the project's `.fuseki.ttl` configuration.

MacOS/Linux:
```
cd fuseki-distribution-folder
./fuseki-server --config=<path to this project>/.fuseki.ttl
```
Windows:
```
cd fuseki-distribution-folder
fuseki-server.bat --config=<path to this project>\.fuseki.ttl
```
The server should now be running and has a `firesat` dataset accessible at http://localhost:3030/fuseki
