#!/usr/bin/env bash


projectDir="$PWD/project/"

if [[ ! -d "$projectDir" ]]; then
  mkdir -p "$projectDir"
fi

if [[ ! -f "$projectDir/.qodana-profile.xml" ]]; then
  cp default/.qodana-profile.xml "$projectDir/.qodana-profile.xml"
  echo "Copied .qodana-profile.xml"
fi

if [[ ! -f "$projectDir/qodana.yaml" ]]; then
  cp default/qodana.yaml "$projectDir/qodana.yaml"
  echo "Copied qodana.yaml"
fi