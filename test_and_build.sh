#!/bin/sh



if ! xmllint --noout VoicePackWithRobojumperScript/ProjectTemplate.x2proj
then
  echo "Validation of ProjectTemplate.x2proj failed"
  exit 1
fi

if ! xmllint --noout VoicePackWithRobojumperScript/DefaultMod.vstemplate
then
  echo "Validation of DefaultMod.vstemplate failed"
  exit 1
fi


if ! zip -9r VoicePackWithRobojumperScript.zip VoicePackWithRobojumperScript
then
  echo "Zipping failed"
  exit 1
fi






