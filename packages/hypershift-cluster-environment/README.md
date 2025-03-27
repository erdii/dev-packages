# hypershift-cluster-environment Example Package

A simple Namespace-Only Package that creates a configmap with an example deployment manifest that uses the hypershift environment data that gets exposed to a Package when it gets deployed in the control-plane namespace of a HostedCluster.

Here's an example of the additional data pko exposes under `.environment`:

```
hyperShift:
  hostedCluster:
    hostedClusterNamespace: ocm-int-2hpbguhpgeu3hq47t990h8bg7veahrl8-joshteststage
    metadata:
      annotations:
        cluster.open-cluster-management.io/hypershiftdeployment: ignore/ignore
        cluster.open-cluster-management.io/managedcluster-name: 2hpbguhpgeu3hq47t990h8bg7veahrl8
        create-external-hub-kubeconfig: "2025-03-27T08:14:03Z"
        hypershift.openshift.io/HasBeenAvailable: "true"
        hypershift.openshift.io/aws-load-balancer-subnets: subnet-085a5586aaa08e710,subnet-0b24363bd4a61368f
        hypershift.openshift.io/cleanup-cloud-resources: "true"
        hypershift.openshift.io/cluster-scheduled: "true"
        hypershift.openshift.io/kube-apiserver-max-mutating-requests-inflight: "100"
        hypershift.openshift.io/kube-apiserver-max-requests-inflight: "400"
        hypershift.openshift.io/pod-security-admission-label-override: privileged
        hypershift.openshift.io/request-serving-node-additional-selector: hypershift.openshift.io/cluster-size=m5xl
        hypershift.openshift.io/skip-release-image-validation: "true"
        hypershift.openshift.io/topology: dedicated-request-serving-components
      labels:
        api.openshift.com/environment: integration
        api.openshift.com/id: 2hpbguhpgeu3hq47t990h8bg7veahrl8
        api.openshift.com/legal-entity-id: <CENSORED>
        api.openshift.com/name: joshteststage
        hypershift.openshift.io/hosted-cluster-size: m5xl
        red-hat-clustertype: rosa
        red-hat-managed: "true"
      name: joshteststage
      namespace: ocm-int-2hpbguhpgeu3hq47t990h8bg7veahrl8
```
