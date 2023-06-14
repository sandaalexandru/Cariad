# Cariad

Open httpServer.ps1 in powershell as Admin and execute the script, then open return200.ps1 in another powershell Admin window after executing this script you will receive an StatusCode : 200 OK.

Go to the path http://localhost:8080/token/ and you will see the http server.

Use the dockerfile for the HTTP server. 
To login to docker use the command Docker login in CMD.
Build the Docker image by running the following command in the same directory as your Dockerfile:
docker build -t sandaalexandru/assignment1:1 .

docker push sandaalexandru/assignment1:1

In CMD install minikube
Run minikube start and then minikube status
kubectl run assignment1 --image=sandaalexandru/assignment1:1 --port=80
kubectl get po - to see the pod was created
kubectl expose pod assignment1svc --port=80
kubectl get svc
kubectl port-forward service/assignment1svc 8080:80

To deploy the server use these manifests:
deployment.yml , service.yml and ingress.yml .

Apply the manifests using the following commands
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl apply -f ingress.yml

Go to the path http://localhost:8080/token/ and you will see the http server.
