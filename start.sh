
kubectl create -f fluentd.yml

kubectl get pods --namespace=kube-system
kubectl logs fluentd-mg2rd --namespace kube-system
