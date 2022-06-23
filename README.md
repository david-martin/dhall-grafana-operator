Experimental [dhall](https://dhall-lang.org/#) types for [grafana-operator](https://github.com/grafana-operator/grafana-operator) CRDs.

## Dependencies

* `dhall` & dhall-openapi (for the `openapi-to-dhall` cli) - Can be downloaded from https://github.com/dhall-lang/dhall-haskell/releases
* [yq](https://github.com/mikefarah/yq)

## Generating dhall types

The example target works with 1 CRD currently, `generate-dhall-types-grafana-dashboard`.
Multiple CRDs are not supported by the `openapi-to-dhall` cli.
Manual updating of the generated files is required to import the K8s types for ObjectMeta & IntOrString.
