# FireSat Example

[![Build Status](https://travis-ci.com/opencaesar/firesat-example.svg?branch=master)](https://travis-ci.com/opencaesar/firesat-example)
[![Release](https://img.shields.io/github/v/tag/opencaesar/firesat-example?label=release)](https://github.com/opencaesar/firesat-example/releases/latest)
[![Documentation](https://img.shields.io/badge/Documentation-HTML-orange)](https://opencaesar.github.io/firesat-example/) 
[![Gitpod](https://img.shields.io/badge/gitpod-open-blue?logo=gitpod)](https://gitpod.io/#https://github.com/opencaesar/firesat-example) 

This is a description of a FireSat project expressed in [OML](https://github.com/opencaesar/oml)

## Clone
```
  git clone https://github.com/opencaesar/firesat-example.git
  cd firesat-example
```
## Prerequisites

- You need JDK 11 installed in the environment

- if you run 'generateDocs', you also need [Bikeshed](https://tabatkins.github.io/bikeshed/#install-final) installed in the environment

## Build
Equivalent to owlReason task
```
./gradlew build
```

## Generate Docs
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
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see Start Fuseki Server below)  


## Run SPARQL Queries
```
./gradlew owlQuery
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see Start Fuseki Server below)  


## Run SHACL Rules
```
./gradlew owlShacl
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat (see Start Fuseki Server below) 


## Publish to Maven Local
```
./gradlew publishToMavenLocal
```

## Start Headless Fuseki Server
```
./gradlew startFuseki
```
> You need to run this once at the start before running any action involving Fuseki

## Stop Headless Fuseki Server
```
./gradlew stopFuseki
```
> You need to run this once at the end after you are done running actions involving Fuseki

