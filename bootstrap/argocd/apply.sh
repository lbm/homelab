#!/usr/bin/env bash

helm template \
    --dependency-update \
    --include-crds \
    --namespace argocd \
    argocd . \
    | kubectl -n argocd apply -f -

kubectl -n argocd wait --timeout=60s --for condition=Established \
    crd/applications.argoproj.io \
    crd/applicationsets.argoproj.io
