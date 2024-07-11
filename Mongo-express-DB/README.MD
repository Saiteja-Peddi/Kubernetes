MongoDB/MongoExpress Kubernetes YAML Scripts

Procedure to deploy into kubernetes cluster:

1. Start Minikube cluster in docker.
2. Create namespace if not already exist: kubectl create namespace <namespace>
3. Run ./apply_k8s.sh to apply all the resources.
4. Since minikube is running in a Docker to access service,
   - If LoadBalancer is used run: "minikube service <service_name>"
   - If Ingress is used run below commands in order
     a. "minikube addons enable ingress" -> (Enables ingress addon and provides env to run ingress)
     b. "kubectl apply -f <ingressFileName.yml>" -> (To run ingress)
     c. "minikube tunnel" -> In separate terminal to create tunnel with minikube ingress. This will enable connection at 127.0.0.1
     d. add "127.0.0.1 <hostname_mentioned_in_ingress>" to /etc/hosts(In Mac to route the host to 127.0.0.1)
5. Finally to delete all the resources, run ./delete_k8s.sh and remove ingress with kubectl delete command.

Some important commands:

1. Switch namespace: kubens $namespace
2. Create namespace: kubectl create namespace $namespace
3. Get ingress: kubectl get ingress
4. Gell all services: kubectl get all
