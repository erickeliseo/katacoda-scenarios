[Rook](https://rook.io/) Rook is an open source cloud-native storage orchestrator, providing the platform, framework, and support for a diverse set of storage solutions to natively integrate with cloud-native environments.

Rook turns storage software into self-managing, self-scaling, and self-healing storage services. It does this by automating deployment, bootstrapping, configuration, provisioning, scaling, upgrading, migration, disaster recovery, monitoring, and resource management. Rook uses the facilities provided by the underlying cloud-native container management, scheduling and orchestration platform to perform its duties.

Rook integrates deeply into cloud native environments leveraging extension points and providing a seamless experience for scheduling, lifecycle management, resource management, security, monitoring, and user experience.

For more details about the status of storage solutions currently supported by Rook, please refer to the project status section of the Rook repository. We plan to continue adding support for other storage systems and environments based on community demand and engagement in future releases.

### Getting Started

Starting Rook in your cluster is as simple as two kubectl commands. See our Quickstart guide for the details on what you need to get going.

Once you have a Rook cluster running, walk through the guides for block, object, and file to start consuming the storage in your cluster:

* Block: Create block storage to be consumed by a pod
* Object: Create an object store that is accessible inside or outside the Kubernetes cluster
* Shared File System: Create a file system to be shared across multiple pods


### Other things you should know

To learn more about how why running Redis on Portworx is a great idea take a look at the following links:
* Guide to run [Cassandra in Docker] containers(https://portworx.com/use-case/cassandra-docker-container/)
* Guide to [Kubernetes and Cassandra](https://docs.portworx.com/applications/cassandra.html)
* [Introduction to Portworx](https://portworx.com/products/introduction/)
* [Customer Stories](https://portworx.com/customers/)
* [STORK open source project](https://portworx.com/stork-storage-orchestration-kubernetes/).


This scenario assumes you have already covered the following scenarios:
* [How to install Portworx on Kubernetes](https://www.katacoda.com/portworx/scenarios/deploy-px-k8s)
* [How to create Portworx volumes on Kubernetes](https://www.katacoda.com/portworx/scenarios/px-k8s-vol-basic)
