This project is intended for Cloud hosted Kubernetes Engines such as Google Kubernetes Engine (GKE), Azure Kuberentes Services (AKS), Amazon Elastic Kubernetes Service (EKS).
Most of the cloud providers offer a cloud shell that comes up with inbuilt kubectl binaries. Once you authenticate to your cloud account, run below kubectl commands to deploy the kubernetes resources.

GKE -   
AKS -   
EKS -   

1. Create a namespace for your application  
	_kubectl apply -f namespace.yaml_
3. Create a k8s Service account for creating deployment and other k8s objects  
    _kubectl apply -f service-account.yaml_
3. Create a Role and assign it to service account created in step #2  
    _kubectl apply -f rbac-policies.yaml_
4. Create Secrets and ConfigMaps required for the application pods.  
    _kubectl apply -f app-secret.yaml  
    kubectl apply -f app-configMap.yaml  
    kubectl apply -f common-configMap.yaml_
5. Create the pods through deployment  
    _kubectl apply -f deployment.yaml_
6. Create the service for exposing pods to the cluster.  
    _kubectl apply -f service.yaml_
