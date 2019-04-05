**Inactive Project:** I've switched from algo to a lighter weight [set of ansible playbooks](https://github.com/akerl/deploy-wireguard-server)

terraform-linode-algo-image
=========

[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Terraform module that creates a [Linode](https://linode.com) Image pre-baked with updates and the [Algo](https://github.com/trailofbits/algo) repo.

## Usage

```
module "algo_image" {
  source  = "github.com/akerl/terraform-linode-algo-base"
}
```

## License

terraform-linode-algo-base is released under the MIT License. See the bundled LICENSE file for details.
