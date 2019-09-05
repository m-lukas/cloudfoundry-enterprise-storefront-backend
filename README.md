# CFEE Eirini Storefront Backend
A backend Cobol service providing a list of products used by the [frontend](https://github.com/IBM-Cloud/cfee-eirini-storefront/tree/master/frontend). 

# Deploy the backend app to CFEE

1.  Use your Kubernetes cluster where your CFEE instance been deployed on.

1. Log in to IBM Cloud, target your Kubernetes cluster. Copy and paste the export command to set the KUBECONFIG environment variable as directed.

   ```bash
   ibmcloud login
   ibmcloud cs cluster-config cluster-name
   ```


1. From your terminal, clone the [app](https://github.com/IBM-Cloud/cfee-eirini-storefront) if you haven't already.

   ```bash
   git clone https://github.com/IBM-Cloud/cfee-eirini-storefront
   ```

1. cd into the `backend` app.

   ```bash
   cd backend
   ```

1. Copy template.local.env to local.env

1. Set values to match your cluster environment. You can get the details below from the IBM Cloud dashboard under your [cluster](https://cloud.ibm.com/kubernetes/clusters). 

   - REGISTRY_URL
   - REGISTRY_NAMESPACE
   - IMAGE_NAME
   - PIPELINE_KUBERNETES_CLUSTER_NAME

1. Build and push the image.

   ```bash
   source local.env
   ./scripts/pipeline-BUILD.sh
   ```

1. Edit the app.yaml file, in line 30 update the below three items:

   - REGISTRY_URL
   - REGISTRY_NAMESPACE
   - IMAGE_NAME
   You have already added these values to the local.env already in step 

1. Deploy to your cluster.

1. Done, next deploy the [frontend](https://github.com/IBM-Cloud/cfee-eirini-storefront/tree/master/frontend). 

# Issues

If you have any question or doubt, please [create an issue](https://github.com/IBM-Cloud/cfee-eirini-storefront/issues).


# License

Licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).