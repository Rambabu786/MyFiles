case platform 
when "redhat","centos","fedora","scientific" 
default[:ntp][:service] = "ntpd" 
when "ubuntu","debian" 
default[:ntp][:service] = "ntp" 
else 
default[:ntp][:service] = "ntpd" 
end