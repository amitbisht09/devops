# This workflow will build a docker container, publish it to Google Container Registry, and deploy it to GKE when a release is created
#
# To configure this workflow:
#
# 1. Ensure that your repository contains the necessary configuration for your Google Kubernetes Engine cluster, including deployment.yaml, kustomization.yaml, service.yaml, etc.
#
# 2. Set up secrets in your workspace: GKE_PROJECT with the name of the project and GKE_SA_KEY with the Base64 encoded JSON service account key (https://github.com/GoogleCloudPlatform/github-actions/tree/docs/service-account-key/setup-gcloud#inputs).
#
# 3. Change the values for the GKE_ZONE, GKE_CLUSTER, IMAGE, and DEPLOYMENT_NAME environment variables (below).
#
# For more support on how to run the workflow, please visit https://github.com/google-github-actions/setup-gcloud/tree/master/example-workflows/gke
