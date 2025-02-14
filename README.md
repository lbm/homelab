# My Homelab

This repository utilizes [GitOps][gitops] and [Infrastructure as Code][iac] to
manage self-hosted services on my personal Kubernetes cluster.

> **What is a homelab?**
>
> A homelab is a laboratory at home where you can self-host, experiment with new
> technologies, practice for certifications, and so on.
>
> To learn more, check out the [r/homelab][homelab-intro] introduction.

[gitops]: https://about.gitlab.com/topics/gitops/
[iac]: https://about.gitlab.com/topics/gitops/infrastructure-as-code/
[homelab-intro]: https://www.reddit.com/r/homelab/wiki/introduction/

## Getting Started

Flux is used for continuous delivery (CD) on my homelab. The following command was used to bootstrap and cluster and should be reused when rotating Flux's PAT for GitHub.

```sh
flux bootstrap github \
  --owner=lbm \
  --repository=homelab \
  --branch=main \
  --private=false \
  --path=clusters/homelab \
  --personal \
  --token-auth=false
```
