# FireSat Example

[![Build Status](https://github.com/opencaesar/firesat-example/actions/workflows/ci.yml/badge.svg)](https://github.com/opencaesar/firesat-example/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/opencaesar/firesat-example?label=Release)](https://github.com/opencaesar/firesat-example/releases/latest)
[![Documentation](https://img.shields.io/badge/Documentation-HTML-orange)](https://www.opencaesar.io/firesat-example/) 

This is a description of a FireSat project expressed in [OML](https://github.com/opencaesar/oml)

## Clone
```
  git clone https://github.com/opencaesar/firesat-example.git
  cd firesat-example
```
## Build

Check the consistency of the dataset

```
./gradlew build
```

## Generate Docs

Generate documentation from dataset

```
./gradlew generateDocs
```

## Start Fuseki Server

Start the Fuseki triple store

```
./gradlew startFuseki
```

Navigate to http://localhost:3030

Verify you see a dataset: `firesat`

## Stop Fuseki Server

Stop the Fuseki triple store

```
./gradlew stopFuseki
```

## Load Dataset to Fuseki

Load the dataset to Fuseki server

```
./gradlew load
```

Navigate to http://localhost:3030/#/dataset/firesat/info

Click on `count triples in all graphs` and observe the triple counts

## Run SPARQL Queries

Run the SPARQL queries

```
./gradlew query
```

Inspect the results at `build/results/firesat`

## Run SHACL Rules
Run the SHACL rules

```
./gradlew validate
```

Inspect the results at `build/logs/firesat`

## Publish to Maven Local

Publish the OML dataset as an archive in the local maven repo

```
./gradlew publishToMavenLocal
```

Inspect the OML archive

```
ls ~/.m2/repository/io/opencaesar/firesat-example
```