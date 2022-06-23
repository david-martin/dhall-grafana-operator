
.PHONY: fetch-crds
fetch-crds:
	curl https://raw.githubusercontent.com/grafana-operator/grafana-operator/master/deploy/manifests/latest/crds.yaml --output crds.yaml --silent

.PHONY: convert-crds-to-json
convert-crds-to-json: fetch-crds
	yq -s '"crd_" + $$index' -o=json crds.yaml

# .PHONY: generate-dhall-types
# generate-dhall-types:
# 	for crd_file in $(shell ls crd_*.json); do \
# 		openapi-to-dhall --crd ./$$crd_file; \
# 	done

.PHONY: generate-dhall-types-grafana-dashboard
generate-dhall-types-grafana-dashboard: convert-crds-to-json
	openapi-to-dhall --crd ./crd_0.json

.PHONY: clean
clean: 
	rm crd_*.json