launch.sh
git clone https://github.com/rook/rook.git
git clone https://github.com/erickeliseo/files.git
helm init
chmod u+x files/setup-rook_cluster.sh
echo -e "\u001b[32mWait for Kubernetes and Rook to be ready\u001b[m\r\n"
kubectl create -f ~/rook/cluster/examples/kubernetes/ceph/operator.yaml
sleep 5
kubectl create -f ~/rook/cluster/examples/kubernetes/ceph/cluster.yaml
