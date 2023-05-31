package podinfo

import "k8s.io/api/apps/v1"

deployment: mydeployment: v1.#Deployment & {
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		name:      "podinfo"
		namespace: "podinfo"
	}
	spec: {
		replicas: 1
		template: {
			spec: {
				containers: [{
					name:  "podinfo"
					image: "ghcr.io/stefanprodan/podinfo:6.3.6"
					ports: [{
						containerPort: 80
					}]
				},
				]
			}
		}
	}
}
