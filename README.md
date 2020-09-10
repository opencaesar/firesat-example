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

## Run SHACL Query (curl)

```
curl -XPOST --data-binary @src/shacl/fse-shapes.ttl  \
	--header 'Content-type: text/turtle' \
	--header 'Accept: text/turtle' \
	'http://localhost:3030/firesat/shacl?graph=default'
@prefix :      <http://opencaesar.io/programs/earth-science/projects/firesat/systems/spc/spc#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix swrl:  <http://www.w3.org/2003/11/swrl#> .
@prefix swrlb: <http://www.w3.org/2003/11/swrlb#> .
@prefix project: <http://imce.jpl.nasa.gov/foundation/project#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix analysis: <http://imce.jpl.nasa.gov/foundation/analysis#> .
@prefix oml:   <http://opencaesar.io/oml#> .
@prefix mission: <http://imce.jpl.nasa.gov/foundation/mission#> .
@prefix fse-shapes: <http://imce.jpl.nasa.gov/discipline/fse/fse-shapes#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix fse:   <http://imce.jpl.nasa.gov/discipline/fse/fse#> .
@prefix dc:    <http://purl.org/dc/elements/1.1/> .
@prefix base:  <http://imce.jpl.nasa.gov/foundation/base#> .

[ a            sh:ValidationReport ;
  sh:conforms  false ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  <http://opencaesar.io/programs/earth-science/projects/firesat/firesat#WP07-incomplete> ;
                 sh:resultMessage              "<http://opencaesar.io/programs/earth-science/projects/firesat/firesat#WP07-incomplete>, a project:WorkPackage, must supply some fse:Subsystem." ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:SPARQLConstraintComponent ;
                 sh:sourceShape                fse-shapes:WorkPackage_supplies_some_Subsystem_sparql ;
                 sh:value                      <http://opencaesar.io/programs/earth-science/projects/firesat/firesat#WP07-incomplete>
               ] ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  :Spacecraft ;
                 sh:resultMessage              "maxCount[1]: Invalid cardinality: expected max 1: Got count = 2" ;
                 sh:resultPath                 project:isSuppliedBy ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:MaxCountConstraintComponent ;
                 sh:sourceShape                _:b0
               ] ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  :Lander ;
                 sh:resultMessage              "minCount[1]: Invalid cardinality: expected min 1: Got count = 0" ;
                 sh:resultPath                 project:isSuppliedBy ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:MinCountConstraintComponent ;
                 sh:sourceShape                _:b0
               ] ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  <http://opencaesar.io/programs/earth-science/projects/firesat/firesat#WP07-incomplete> ;
                 sh:resultMessage              "minCount[1]: Invalid cardinality: expected min 1: Got count = 0" ;
                 sh:resultPath                 project:supplies ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:MinCountConstraintComponent ;
                 sh:sourceShape                [] 
               ] ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  :Spacecraft ;
                 sh:resultMessage              "<http://opencaesar.io/programs/earth-science/projects/firesat/systems/spc/spc#Spacecraft>, an fse:Subsystem, must be supplied by exactly 1 project:WorkPackage instead of 2." ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:SPARQLConstraintComponent ;
                 sh:sourceShape                fse-shapes:Susbystem_supplied_by_one_WorkPackage_sparql ;
                 sh:value                      :Spacecraft
               ] ;
  sh:result    [ a                             sh:ValidationResult ;
                 sh:focusNode                  :Lander ;
                 sh:resultMessage              "<http://opencaesar.io/programs/earth-science/projects/firesat/systems/spc/spc#Lander>, an fse:Subsystem, must be supplied by exactly 1 project:WorkPackage instead of 0." ;
                 sh:resultSeverity             sh:Violation ;
                 sh:sourceConstraintComponent  sh:SPARQLConstraintComponent ;
                 sh:sourceShape                fse-shapes:Susbystem_supplied_by_one_WorkPackage_sparql ;
                 sh:value                      :Lander
               ]
] .
```

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
Download the [Apache Jena Fuseki](https://jena.apache.org/download/index.cgi) distribution and run the server locally:

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
By default, the server will be running at http://localhost:3030

## Create Dataset in Fuseki
To create a datset in Fuseki, do the following:

1. click on the `manage datasets` link
1. click on the `add new dataset` link
1. type the `<dataset>` name
1. click on the `create dataset` button

Now, you should be able to use the endpoint: `http://localhost:3030/<dataset>`
