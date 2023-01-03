# install minikube:

# https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/

snap install kubectl --classic

kubectl version

# https://kubernetes.io/ru/docs/tasks/tools/install-minikube/

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  
sudo mkdir -p /usr/local/bin/

sudo install minikube /usr/local/bin/

sudo nano /etc/systemd/system/minikube.service

========================================================================

[Unit]

Description=Runs minikube on startup

After=vboxautostart-service.service vboxballoonctrl-service.service vboxdrv.service vboxweb-service.service

[Service]

ExecStart=/usr/local/bin/minikube start --driver=none (or you can use "minikube start --cpus=2 --memory=2048mb --force --vm-driver=docker")

ExecStop=/usr/local/bin/minikube stop

Type=oneshot

RemainAfterExit=yes

User=root

Group=root

[Install]

WantedBy=multi-user.target

========================================================================

systemctl daemon-reload && systemctl start minikube && systemctl enable minikube

sudo apt-get install -y conntrack

minikube start --driver=none (or you can use "minikube start --cpus=2 --memory=2048mb --force --vm-driver=docker")

# https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

minikube addons enable ingress

kubectl get pods -n ingress-nginx

# check config:

kubectl config view

minikube ip

minikube ssh (if use --vm-driver=docker)

docker exec -it minikube bash (if use --vm-driver=docker)

# before start:

kubectl create secret generic test --from-literal=test1=asdf

# for start:

kubectl apply -f . (with -w parameter)

# after start:

add to /etc/hosts "your.local.ip	teamcity.cluster.local"

# for check status:

kubectl get {pod rs deploy svc secret ing cm pv pvc ep node} (with -o yaml & -o wide & --show-labels parametrs)

kubectl describe {pod rs deploy svc secret ing cm pv pvc ep node} my-deployment (with -o yaml & -o wide & --show-labels parametrs)

kubectl describe deployments.apps my-deployment

# for edit:

kubectl edit deployment my-deployment

kubectl set image deployment my-deployment '*=your_image:new_version'

# for change version:

kubectl rollout undo deployment my-deployment --to-revision=1

# for check logs:

kubectl logs my-deployment-.......

# for exec:

kubectl exec -it my-deployment-....... bash

# for destroy all in cluster:

kubectl delete all --all

# for delete cluster

minikube delete --purge --all
