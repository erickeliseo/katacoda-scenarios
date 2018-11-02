Para instalar Istio, lo primero que debemos hacer en ingresar con el usuario: `system:admin`

Ejecutamos el siguiente comando `oc login -u system:admin`{{execute T1}}

Extraemos el instalador de Istio: `tar -xvzf istio-1.0.2-linux.tar.gz`{{execute T1}}

Instalamos los 'CustomResourceDefinitions' necesarios, utilizando el siguiente comando: `oc apply -f ~/installation/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml`{{execute T1}}

Instalamos Istio con autenticación TLS mutua predeterminada: `oc apply -f ~/installation/istio-1.0.2/install/kubernetes/istio-demo-auth.yaml`{{execute T1}}

Para verificar la creación de los pods, eejcutamos `oc get pods -w -n istio-system`{{execute T1}}

Cuando todos este en estado `Running`, podemos presionar `CTRL+C`.

## Add Istio to the path

Para ejecutar el comando `istioctl`, es necesario agregarlo al PATH:

Ejecutamos `export PATH=$PATH:~/installation/istio-1.0.2/bin`{{execute interrupt T1}}.

Ahora si podemos revisar la versión instalada de `istioctl`.

Para ello ejecutamos `istioctl version`{{execute T1}}.
