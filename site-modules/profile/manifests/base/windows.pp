# This class defines the baseline applied to all windows systems
class profile::base::windows {
  include wazuh::agent
  include splunk::forwarder
  include sensu::agent
}
