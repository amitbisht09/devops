This project is intended for Cloud hosted Kubernetes Engines such as Google Kubernetes Engine (GKE), Azure Kuberentes Services (AKS), Amazon Elastic Kubernetes Service (EKS).
Most of the cloud providers offer a cloud shell that comes up with inbuilt kubectl binaries. Once you authenticate to your cloud account, run below kubectl commands to deploy the kubernetes resources.

GKE - https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-zonal-cluster#console  
AKS - https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough-portal  
EKS - https://docs.aws.amazon.com/eks/latest/userguide/create-cluster.html    

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
7. Create a default GCE Ingress resource.
		_kubectl apply -f ingress-rule.yaml_

More details on different Ingress controllers can be found at:  

https://azure.github.io/application-gateway-kubernetes-ingress/  
https://github.com/kubernetes/ingress-nginx/blob/master/README.md#readme  
https://github.com/kubernetes/ingress-gce/blob/master/README.md#readme  
https://github.com/kubernetes-sigs/aws-load-balancer-controller#readme  
