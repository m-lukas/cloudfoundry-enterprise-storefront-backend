#!/bin/bash
# export INGRESS_SUBDOMAIN=$(ibmcloud cs cluster-get $PIPELINE_KUBERNETES_CLUSTER_NAME --json | jq -r .ingressHostname)
# echo "INGRESS_SUBDOMAIN=$INGRESS_SUBDOMAIN"

# export INGRESS_SECRET=$(ibmcloud cs cluster-get $PIPELINE_KUBERNETES_CLUSTER_NAME --json | jq -r .ingressSecretName)
# echo "INGRESS_SECRET=${INGRESS_SECRET}"

cat app.yaml | \
  envsubst | \
  kubectl apply -f - || exit 1
