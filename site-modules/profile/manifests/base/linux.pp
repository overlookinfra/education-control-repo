# This class defines the baseline applied to all linux systems
class profile::base::linux {

  #the base profile should include component modules that will be on all nodes
  include ntp
  include motd
  include ssh
  include accounts
  include wazuh::agent
  include splunk::forwarder
  include sensu::agent
}
