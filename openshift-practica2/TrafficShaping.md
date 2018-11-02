Revisamos los pods de Istio:  `oc get pods -w -n istio-system`{{execute T1}}
Cuando todos este en estado `Running`, podemos presionar `CTRL+C`.

`oc apply -f <(istioctl kube-inject -f ~/installation/istio-1.0.2/samples/bookinfo/platform/kube/bookinfo.yaml)
`{{execute T1}}

Revisamos los pods de la aplicación de Demo:  `oc get pods`{{execute T1}}
Cuando todos este en estado `Running`, podemos presionar `CTRL+C`.

Gateway
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/bookinfo-gateway.yaml
`{{execute T1}}

Destination rules:
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/destination-rule-all-mtls.yaml
`{{execute T1}}

Virtual Services, Enviemos todo el trafico a la versión 1 del servicio Reviews:
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-reviews-v2-v3.yaml
`{{execute T1}}

Generemos tráfico con Postman

Enviemos todo el trafico a la versión 2 de todos los servicios:
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-reviews-v2.yaml
`{{execute T1}}

Virtual Services:
`oc apply -f ~/installation/istio-1.0.2/samples/bookinfo/networking/virtual-service-reviews-v3.yaml
`{{execute T1}}
