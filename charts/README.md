# Helm charts development

## Linting 

```
cd github-realestatepilot/helm-charts

docker run -v $PWD:/workdir --workdir /workdir --network host quay.io/helmpack/chart-testing:v3.5.0 ct lint-and-install --all --chart-dirs=charts --target-branch main
```
