Install kubectl on your machine

1. Create a namespace for your application
kubectl apply -f namespace.yaml
2. Create a k8s Service account for creating deployment and other k8s objects
kubectl apply -f service-account.yaml
3. Create a Role and assign it to service account created in step #2
kubectl apply -f rbac-policies.yaml
4. Create Secrets and ConfigMaps required for the application pods.
kubectl apply -f app-secret.yaml
kubectl apply -f app-configMap.yaml
kubectl apply -f common-configMap.yaml
5. Create the pods through deployment
kubectl apply -f deployment.yaml
6. Create the service for exposing pods to the cluster.
kubectl apply -f service.yaml
