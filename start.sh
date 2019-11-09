kubectl create -f service_account.yml --validate= false
kubectl create -f cluster_role.yml
kubectl create -f role_binding.yml
kubectl create -f fluent_logger.yml