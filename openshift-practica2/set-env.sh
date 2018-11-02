/usr/local/bin/launch.sh
mkdir -p /root/installation && cd ~/installation

# -----------------
git clone https://github.com/erickeliseo/katacoda-scenarios.git
wget -c https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-linux.tar.gz -P /root/installation
# -----------------
oc adm policy add-scc-to-user anyuid -z istio-ingress-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z default -n istio-system
oc adm policy add-scc-to-user anyuid -z prometheus -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-egressgateway-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-citadel-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-ingressgateway-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-cleanup-old-ca-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-mixer-post-install-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-mixer-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-pilot-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-sidecar-injector-service-account -n istio-system
oc adm policy add-scc-to-user anyuid -z istio-galley-service-account -n istio-system
oc adm policy add-scc-to-user privileged -z default -n istio-system
oc adm policy add-scc-to-user privileged -z default -n default
# -----------------
tar -xvzf istio-1.0.2-linux.tar.gz
export PATH="$PATH:~/installation/istio-1.0.2/bin"
oc apply -f ~/installation/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml
oc apply -f ~/installation/istio-1.0.2/install/kubernetes/istio-demo-auth.yaml
# Exponer Servicios
oc expose svc istio-ingressgateway -n istio-system; \
oc expose svc servicegraph -n istio-system; \
oc expose svc grafana -n istio-system; \
oc expose svc prometheus -n istio-system; \
oc expose svc tracing -n istio-system

#oc apply -f <(istioctl kube-inject -f ~/installation/istio-1.0.2/samples/bookinfo/platform/kube/bookinfo.yaml)
#oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/bookinfo-gateway.yaml

# ---------------
# oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-all-v1.yaml
# oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-all-v2.yaml
# oc apply  apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-reviews-90-10.yaml
