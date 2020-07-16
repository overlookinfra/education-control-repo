Puppet Education Control Repository
==========================

This is the reference control-repo used for Puppet Education purposes.

* [Control Repository Layout](#control-repository-layout)
  * [Hiera Structure](#hiera-structure)
  * [Roles](#roles)
  * [Profiles](#profiles)

## Control Repository Layout

This control repository is based off of the [control repository template](https://github.com/puppetlabs/control-repo) created and maintained by Puppet.

The important files and items in this control repository are as follows:

* Basic example of roles and profiles.
* An example Puppetfile with various module references.
* An example Hiera configuration file and data directory with pre-created common.yaml and nodes directory.
  * These match the default hierarchy that ships with PE.
* An [environment.conf](https://puppet.com/docs/puppet/5.3/config_file_environment.html) that correctly implements:
  * A site-modules directory for roles, profiles, and any custom modules for your organization.
  * A config\_version script.
* An example [config\_version](https://puppet.com/docs/puppet/5.3/config_file_environment.html#configversion) script that outputs the git commit ID of the code that was used during a Puppet run.

Here's a visual representation of the structure of this repository:

```
control-repo/
├── data/                                 # Hiera data directory.
│   ├── nodes/                            # Node-specific data goes here.
│   └── common.yaml                       # Common data goes here.
├── manifests/
│   └── site.pp                           # The "main" manifest that contains a default node definition.
├── scripts/
│   ├── code_manager_config_version.rb    # A config_version script for Code Manager.
│   ├── config_version.rb                 # A config_version script for r10k.
│   └── config_version.sh                 # A wrapper that chooses the appropriate config_version script.
├── site-modules/                         # This directory contains site-specific modules and is added to $modulepath.
│   ├── profile/                          # The profile module.
│   └── role/                             # The role module.
├── LICENSE
├── Puppetfile                            # A list of external Puppet modules to deploy with an environment.
├── README.md
├── environment.conf                      # Environment-specific settings. Configures the modulepath and config_version.
└── hiera.yaml                            # Hiera's configuration file. The Hiera hierarchy is defined here.
```

### Hiera Structure


### Roles
Puppet roles define the overall system configuration that aligns with the function of the node.

* web_server:
* database_server:


### Profiles
Puppet profiles are used as the building blocks for Puppet roles which align to a higher level use case.

* **linux_baseline:** The baseline configuration that gets applied to all Linux systems. This includes settings and software such as monitoring or logging agents that are installed on the system.
* **windows_baseline:** The baseline configuration that gets applied to all Windows systems. This includes settings and software such as monitoring or logging agents that are installed on the system.