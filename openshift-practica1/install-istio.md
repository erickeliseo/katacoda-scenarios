Para instalar Istio, lo primero que debemos hacer en logearnos con el usuario: `system:admin`

To log in the OpenShift cluster, type `oc login -u system:admin`{{execute T1}}

Now that you are logged in, it's time to extract the existing istio installation: `tar -xvzf istio-1.0.2-linux.tar.gz`{{execute T1}}

To allow OpenShift/Kubernetes to understand those values, we first need to install the 'CustomResourceDefinitions' file using the command `oc apply -f ~/installation/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml`{{execute T1}}

To allow OpenShift/Kubernetes to understand those values, we first need to install the 'CustomResourceDefinitions' file using the command `oc apply -f ~/installation/istio-1.0.2/install/kubernetes/istio-demo-auth.yaml`{{execute T1}}

To watch the creation of the pods, execute `oc get pods -w -n istio-system`{{execute T1}}

Once that they are all `Running`, you can hit `CTRL+C`. This concludes this scenario.

## Add Istio to the path

Now we need to add `istioctl` to the path.

Execute `export PATH=$PATH:~/installation/istio-1.0.2/bin`{{execute interrupt T1}}.

Now try it. Check the version of `istioctl`.

Execute `istioctl version`{{execute T1}}.
