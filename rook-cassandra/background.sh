ssh root@[[HOST_IP]] 'echo "Host *" >> /root/.ssh/config && echo "    StrictHostKeyChecking no" >> /root/.ssh/config && chmod 400 /root/.ssh/config'
git clone https://github.com/rook/rook.git
kubectl create -f rook/cluster/examples/kubernetes/ceph/operator.yaml
