ssh root@[[HOST_IP]] 'echo "Host *" >> /root/.ssh/config && echo "    StrictHostKeyChecking no" >> /root/.ssh/config && chmod 400 /root/.ssh/config'
kubectl create -f stork.yaml
kubectl create -f stork-scheduler.yaml
kubectl create -f https://github.com/rook/rook/blob/master/cluster/examples/kubernetes/ceph/operator.yaml
