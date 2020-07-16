# This class defines the baseline applied to all systems
class profile::base {
  # Include OS specific base profiles.
  case $::kernel {
    'linux': {
      include profile::base::linux
    }
    'windows': {
      include profile::base::windows
    }
    default: {
      fail ("Kernel: ${::kernel} not supported in ${module_name}")
    }
  }
}
