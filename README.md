# Cariad

Open httpServer.ps1 in powershell as Admin and execute the script, then open return200.ps1 in another powershell Admin window after executing this script you will receive an StatusCode : 200 OK.

Go to the path http://localhost:8080/token/ and you will see the http server.

Use the dockerfile for the HTTP server. 
To login to docker use the command Docker login in CMD.
Build the Docker image by running the following command in the same directory as your Dockerfile:
docker build -t sandaalexandru/nginxtest:latest .

docker push sandaalexandru/nginxtest:latest

docker run -d -p 7080:80 sandaalexandru/nginxtest:latest Then go to http://localhost:7080/ and you will see the nginx image.
This can also be tested by running a docker exec command and then run curl localhost:80 and it will output the nginxpage.

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

run kubectl exec -it http-server-deployment-6c6b9c9f98-6vg6s bash 
install curl on the pod and then run curl localhost:80 it will output the nginx image.
