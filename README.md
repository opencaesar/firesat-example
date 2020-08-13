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

## Run Reasoner
```
./gradlew owlreason
```

## Generate Docs
You must first have Bikeshed installed from [here](https://tabatkins.github.io/bikeshed/#installing)
```
./gradlew bikeshed2html
```

## Publish to Maven Local
```
./gradlew publishToMavenLocal
```
