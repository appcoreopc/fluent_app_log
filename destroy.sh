kubectl delete clusterrolebinding fluentd
kubectl delete clusterrole fluentd
kubectl delete serviceaccount fluentd
kubectl delete DaemonSet fluentd --namespace kube-system
kubectl delete serviceaccount -n kube-system fluentd