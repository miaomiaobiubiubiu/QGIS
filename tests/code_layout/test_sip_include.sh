#!/usr/bin/env bash

DIR=$(git rev-parse --show-toplevel)
REV=$(git log -n1 --pretty=%H)

# GNU prefix command for mac os support (gsed, gsplit)
GP=
if [[ "$OSTYPE" =~ darwin* ]]; then
  GP=g
fi

pushd ${DIR} > /dev/null

code=0
modules=(core gui analysis server)
for module in "${modules[@]}"; do
  cp python/${module}/${module}_auto.sip python/${module}/${module}_auto.sip.$REV.bak
done

./scripts/sip_include.sh

for module in "${modules[@]}"; do
  outdiff=$(diff python/${module}/${module}_auto.sip python/${module}/${module}_auto.sip.$REV.bak)
  if [[ -n $outdiff ]]; then
    echo -e " *** SIP include file for \x1B[33m${module}\x1B[0m not up to date."
    echo "$outdiff"
    code=1
    mv python/${module}/${module}_auto.sip.$REV.bak python/${module}/${module}_auto.sip
  else
    rm python/${module}/${module}_auto.sip.$REV.bak
  fi
done

if [[ code -eq 1 ]]; then
  echo -e " Run \x1B[33m./scripts/sip_include.sh\x1B[0m to add to fix this."
  echo -e " If a header should not have a sip file created, add \x1B[33m#define SIP_NO_FILE\x1B[0m."
fi

popd > /dev/null

exit $code
