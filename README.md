# Status

[![Build Status](https://jenkins.fz.sdlocal.net/buildStatus/icon?job=PMHC%20Docs)](https://jenkins.fz.sdlocal.net/job/PMHC%20Docs/)

# Usage

## Build the documentation

```
./scripts/make.sh
```
This will:

* create restructured text from the metadata files
* move generated content into the correct locations
* create zip of spec metadata (csv + json files) inside data-specification
* run sphinx to generate the html output in doc/build/html

### Update the specification version

If the specification version has been changed:

```
git tag -a v1.0.xx
```

This will:

* tag the git repository with the new specification version. This is used to
  generate the version.txt file in the specification download zip.

## Publish to https://docs.pmhc-mds.com

### First time only!

```
# check if you have the publish remote set

$ git remote -v
origin	git@gh.sdintra.net:PMHC/spec.git (fetch)
origin	git@gh.sdintra.net:PMHC/spec.git (push)

# if not, add it

$ git remote add publish git@github.com:strategicdata/pmhc-mds-spec.git

# check again for good measure

$ git remote -v
origin	git@gh.sdintra.net:PMHC/spec.git (fetch)
origin	git@gh.sdintra.net:PMHC/spec.git (push)
publish	git@github.com:strategicdata/pmhc-mds-spec.git (fetch)
publish	git@github.com:strategicdata/pmhc-mds-spec.git (push)

```

### Then

```
./scripts/publish.sh
```

This will:

* Push the publish branch to our public git repo, which will automatically
* prompt hub.docker.com to build the static in a docker container, which will automatically (https://hub.docker.com/r/stratdat/pmhc-mds-spec/)
* prompt Docker Cloud to update the running containers

## Docker

If you need to build and push a new image containing the tools to convert
metadata to restructured text see the csvw-metadata2rst repo.

https://gh.sdintra.net/PMHC/csvw-metadata2rst
