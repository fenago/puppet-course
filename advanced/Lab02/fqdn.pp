$fqdn_ = $facts['fqdn']
notify {"::fqdn is ${::fqdn}": }
notify {"fqdn_ is ${fqdn_}": }
notify {"facts['fqdn'] is ${facts['fqdn']}": }