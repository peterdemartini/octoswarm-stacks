#!/bin/bash

set -e

export BEEKEEPER_URI='https://hive-manager:some-random-password@beekeeper.nodesummit.octoblu.com'

ensure_beekeeper_util() {
  if [ -z "$(which beekeeper)" ]; then
    if [ -z "$(which yarn)" ]; then
      echo '* running "yarn global add beekeeper-util"'
      yarn global add beekeeper-util
    else
      echo '* running "npm install --global beekeeper-util"'
      npm install --global beekeeper-util
    fi
  fi
}

create_deployment() {
  local owner="$1"
  local repo="$2"
  local tag="$3"
  echo "* deploying $owner/$repo:$tag"
  curl --silent --fail -X POST "$BEEKEEPER_URI/deployments/$owner/$repo/$tag"
}

mark_deployment_as_succesful() {
  local owner="$1"
  local repo="$2"
  local tag="$3"
  echo "* marking $owner/$repo:$tag as successful"
  beekeeper webhook \
    --type codefresh \
    --ci-passing true \
    --tag "$tag" \
    --owner "$owner" \
    "$repo"
}

deploy_it() {
  local owner="$1"
  local repo="$2"
  local tag="$3"
  create_deployment "$owner" "$repo" "$tag"
  mark_deployment_as_succesful "$owner" "$repo" "$tag"
}

main() {
  ensure_beekeeper_util
  deploy_it "octoblu" "beekeeper-service" "v4.0.0"
  deploy_it "octoblu" "beekeeper-worker" "v2.0.1"
  deploy_it "octoblu" "beekeeper-updater-swarm" "v2.2.3"
  deploy_it "octoblu" "server-status-code" "v2.0.2"
  deploy_it "octoblu" "nodesummit-beekeeper-manager" "v1.0.3"
  deploy_it "octoblu" "nodesummit-api-ai-service" "v3.0.2"
  deploy_it "octoblu" "meshblu-core-dispatcher" "v20.0.5"
}

main "$@"
