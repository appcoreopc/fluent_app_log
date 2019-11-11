Execute :- 

1. Start.sh
2. To check if it is running, run the following command :-

   kubectl get pods --namespace=kube-system | grep "fluentd"

3. kubectl logs <pod name above> --namespace kube-system


4. You should see something like 

2019-11-09 06:15:54 +0000 [info]: starting fluentd-1.7.4 pid=7 ruby="2.6.5"
2019-11-09 06:15:54 +0000 [info]: spawn command to main:  cmdline=["/usr/local/bin/ruby", "-Eascii-8bit:ascii-8bit", "/fluentd/vendor/bundle/ruby/2.6.0/bin/fluentd", "-c", "/fluentd/etc/fluent.conf", "-p", "/fluentd/plugins", "--gemfile", "/fluentd/Gemfile", "--under-supervisor"]




External dependecies :

Elastic search setup

sudo docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.4.2



To search all index 

curl -X GET http://localhost:9200/_search?pretty=true&q=*:*
