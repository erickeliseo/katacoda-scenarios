## Instalando aplicacion demo
`oc apply -f <(istioctl kube-inject -f ~/installation/istio-1.0.2/samples/bookinfo/platform/kube/bookinfo.yaml)
`{{execute T1}}

`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/bookinfo-gateway.yaml
`{{execute T1}}

## Create external routes

OpenShift uses the concept of Routes to expose HTTP services outside the cluster.

Let's create routes to external services like `Grafana`, `Prometheus`, `Tracing`, etc using the following command:

`oc expose svc istio-ingressgateway -n istio-system; \
oc expose svc servicegraph -n istio-system; \
oc expose svc grafana -n istio-system; \
oc expose svc prometheus -n istio-system; \
oc expose svc tracing -n istio-system`{{execute interrupt T1}}

`oc get pods
`{{execute T1}}

Ahora podemos larzar carga a la aplicación de demo.

Revisión de Dashboards
