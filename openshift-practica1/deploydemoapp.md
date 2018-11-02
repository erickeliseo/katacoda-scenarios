Instalamos la aplicacion de demos Bookinfo:
`oc apply -f <(istioctl kube-inject -f ~/installation/istio-1.0.2/samples/bookinfo/platform/kube/bookinfo.yaml)
`{{execute T1}}

Generamos un gateway para el ingreso al aplicativo:
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/bookinfo-gateway.yaml
`{{execute T1}}

Verificarmos que todos los pods esten en estado `Running`, luego podemos presionar `CTRL+C`.
`oc get pods `{{execute T1}}

## Creación de rutas para acceso desde el Exterior
Creamos rutas para poder ingresar a las herramientas: `Grafana`, `Prometheus`, `Tracing`, etc:

`oc expose svc istio-ingressgateway -n istio-system; \
oc expose svc servicegraph -n istio-system; \
oc expose svc grafana -n istio-system; \
oc expose svc prometheus -n istio-system; \
oc expose svc tracing -n istio-system`{{execute interrupt T1}}

Ahora podemos larzar carga a la aplicación de demo y revisión de Dashboards
