# cda-helm
A helm repo for cda from Broad Data Science Platforms Group

![Release Indivdual Charts](https://github.com/broadinstitute/cda-helm/workflows/Release%20Indivdual%20Charts/badge.svg)

## How Do I install the repo
```
helm repo add cda-helm https://broadinstitute.github.io/cda-helm
helm repo update
```
## How Do I Install These Charts?

Just `helm install cda-helm/<chart>`. This is the default repository for Helm which is located at https://broadinstitute.github.io/cda-helm/ and is installed by default.

For more information on using Helm, refer to the [Helm documentation](https://github.com/kubernetes/helm#docs).

## Example
```helm upgrade cda cda-helm/cda --install --namespace dev --create-namespace```
