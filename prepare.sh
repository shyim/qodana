#!/usr/bin/env bash

set -x

projectDir="$PWD/project/"

if [[ ! -d "$projectDir" ]]; then
  mkdir -p "$projectDir"
fi

if [[ ! -f "$projectDir/.qodana-profile.xml" ]]; then
  cp default/.qodana-profile.xml "$projectDir/.qodana-profile.xml"
  echo "Copied .qodana-profile.xml"
fi

if [[ ! -f "$projectDir/qodana.yaml" ]]; then
  if [[ -e "./default/${PROJECT_NAME}/qodana.yaml" ]]; then
    cp "./default/${PROJECT_NAME}/qodana.yaml" "$projectDir/qodana.yaml"
  else
    cp default/qodana.yaml "$projectDir/qodana.yaml"
  fi
  echo "Copied qodana.yaml"
fi