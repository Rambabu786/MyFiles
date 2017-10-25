#
# Cookbook:: ntp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package node[:ntp][:service] do 
action :install
end
template "/etc/ntp.conf" do 
source "ntp.conf.erb" 
variables( :ntp_server => "time.nist.gov" ) 
notifies :restart, "service[ntpd]" 
end
service node[:ntp][:service] do 
service_name node[:ntp][:service] 
action [:enable,:start,:restart] 
end