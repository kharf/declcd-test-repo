package podinfo

import "k8s.io/api/core/v1"

namespace: v1.#Namespace & {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "podinfo"
}
