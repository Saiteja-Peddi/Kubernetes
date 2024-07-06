MongoDB/MongoExpress Kubernetes YAML Scripts

Procedure to deploy into kubernetes cluster:

1. Start Minikube cluster in docker.
2. Apply mongo-secret.yml using apply command.
3. Create Deployment and Service for MongoDB using mongo.yml
4. Apply mongo-configmap.yml using apply command.
5. Create Deployment and Service for Mongo Express using mongo-express.yml
6. Since Docker is being used, run below command to create a public ip and tunnel ip so that we can run mongo-express locally.
