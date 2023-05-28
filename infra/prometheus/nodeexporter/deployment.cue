package nodeexporter

import "k8s.io/api/apps/v1"

deployment: mydeployment: v1.#Deployment & {
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: name: "mynodeexporterdeployment"
}
