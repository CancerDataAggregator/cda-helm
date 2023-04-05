## cda-helm

This is a helm repository for cda from Broad Data Science Platforms Group.

## How to Install the Repo

To install the repo, run the following commands:

```
helm repo add cda-helm <https://CancerDataAggregator.github.io/cda-helm>
helm repo update

```

## How to Install These Charts

To install the charts, simply run `helm install cda-helm/<chart>`. This is the default repository for Helm, which is located at [https://CancerDataAggregator.github.io/cda-helm/](https://cancerdataaggregator.github.io/cda-helm/) and is installed by default.

For more information on using Helm, please refer to the [Helm documentation](https://github.com/kubernetes/helm#docs).

## Example

Here's an example command to upgrade cda:

```
helm upgrade cda cda-helm/cda --install --namespace dev --create-namespace

```

## Note

To use GitHub Actions, you need to supply a valid GitHub token (Personal access token) in the `cr.yml` file.

To obtain a token, go to your GitHub settings, then to developer settings, and find the "Personal access tokens (classic)" option. Generate a token and use it in the `cr.yml` file.

Please note that at some point in the future, "Personal access tokens (classic)" will be removed from GitHub. You will then need to use Fine-grained personal access tokens (currently in beta) as of 4/5/2023.



Tools: 
you can use https://github.com/helm/chart-testing to lint yaml