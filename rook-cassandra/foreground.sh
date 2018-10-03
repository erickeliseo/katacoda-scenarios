launch.sh
git clone https://github.com/rook/rook.git
kubectl create -f rook/cluster/examples/kubernetes/ceph/operator.yaml
