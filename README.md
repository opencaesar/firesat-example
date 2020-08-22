# FireSat Example

[![Gitpod](https://img.shields.io/badge/gitpod-open-blue?logo=gitpod)](https://gitpod.io/#https://github.com/opencaesar/example-firesat) 
[![Build Status](https://travis-ci.org/opencaesar/example-firesat.svg?branch=master)](https://travis-ci.org/opencaesar/example-firesat)
[ ![Download](https://api.bintray.com/packages/opencaesar/example-firesat/example-firesat/images/download.svg) ](https://bintray.com/opencaesar/example-firesat/example-firesat/_latestVersion)

This is a description of a FireSat project expressed in [OML](https://github.com/opencaesar/oml)

## Clone
```
  git clone https://github.com/opencaesar/example-firesat.git
  cd example-firesat
```

## Build
Run reasoner, generate docs, and archive sources
```
./gradlew build
```

## Download Dependencies
```
./gradlew omldependencies
```

## Run Reasoner
```
./gradlew owlreason
```

## Load to Fuseki
```
./gradlew owlload
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat  

## Run Query
```
./gradlew owlquery
```
Pre-req: A Fuseki server with a firesat dataset must be running at http://localhost:3030/firesat  

## Generate Docs
You must first have Bikeshed installed from [here](https://tabatkins.github.io/bikeshed/#installing)
```
./gradlew bikeshed2html
```

## Publish to Maven Local
```
./gradlew publishToMavenLocal
```

## Run Fuseki Locally
Download the [Jena Fuseki](https://jena.apache.org/download/index.cgi) distribution and run the server locally:

MacOS/Linux:
```
cd fuseki-distribution-folder
./fuseki-server
```
Windows:
```
cd fuseki-distribution-folder
fuseki-server.bat
```
By default, the server will be running at http://localhost:3030
