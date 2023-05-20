#!/bin/bash
gcloud projects add-iam-policy-binding kong-k8s-386713 \
	--member=serviceAccount:github-action@kong-k8s-386713.iam.gserviceaccount.com \
	--role=roles/container.admin
gcloud projects add-iam-policy-binding kong-k8s-386713 \
	--member=serviceAccount:github-action@kong-k8s-386713.iam.gserviceaccount.com \
	--role=roles/storage.admin
gcloud projects add-iam-policy-binding kong-k8s-386713 \
	--member=serviceAccount:github-action@kong-k8s-386713.iam.gserviceaccount.com \
	--role=roles/container.clusterViewer

gcloud iam service-accounts keys create key.json --iam-account=github-action@kong-k8s-386713.iam.gserviceaccount.com