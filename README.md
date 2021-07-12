[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/SantanderMetGroup/binder-atlas/master)

This repo holds the binder for https://github.com/IPCC-WG1/Atlas.

The docker image was built using the following binder/environemnt.yml.

```yaml
name: climate4R
channels:
  - santandermetgroup
  - conda-forge
  - r
  - defaults
dependencies:
  - climate4r=1.5.1
  - r-irkernel
  - jupyter
  # extra
  - r-devtools
  - r-gridextra
  - r-xtable
  - r-magrittr
  - r-httr
  - r-lattice
  - r-latticeExtra
```

To build the docker image: `jupyter-repo2docker --ref devel REPO`.
