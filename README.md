# cda-helm
A helm repo for cda from Broad Data Science Platforms Group

![Release Indivdual Charts](https://github.com/CancerDataAggregator/cda-helm/workflows/Release%20Indivdual%20Charts/badge.svg)

## How Do I install the repo
```
helm repo add cda-helm https://CancerDataAggregator.github.io/cda-helm
helm repo update
```
## How Do I Install These Charts?

Just `helm install cda-helm/<chart>`. This is the default repository for Helm which is located at https://CancerDataAggregator.github.io/cda-helm/ and is installed by default.

For more information on using Helm, refer to the [Helm documentation](https://github.com/kubernetes/helm#docs).

## Example
```helm upgrade cda cda-helm/cda --install --namespace dev --create-namespace```


## **Note**

To use GitHub Actions, you need to supply a valid GitHub token (Personal access token) in the `cr.yml` file.

To obtain a token, go to your GitHub settings, then to developer settings, and find the "Personal access tokens (classic)" option. Generate a token and use it in the `cr.yml` file.

Note that at some point in the future, "Personal access tokens (classic)" will be removed from GitHub. You will then need to use Fine-grained personal access tokens (currently in beta) as of 4/5/2023.