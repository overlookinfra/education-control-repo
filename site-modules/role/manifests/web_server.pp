# This class defines the web_server role
class role::web_server {

  #This role would be made of all the profiles that need to be included to make a webserver work
  include profile::linux_base

}
