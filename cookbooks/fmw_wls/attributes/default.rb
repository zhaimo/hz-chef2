
default['fmw']['version']                 = '12.2.1' # 10.3.6|12.1.1|12.1.2|12.1.3|12.2.1
default['fmw_wls']['install_type']        = 'wls' # infra or wls

if platform_family?('windows')
  default['fmw']['middleware_home_dir']   = 'C:/oracle/middleware'
  default['fmw']['ora_inventory_dir']     = 'C:\\Program Files\\Oracle\\Inventory'
  default['fmw']['tmp_dir']               = 'C:/temp'
else
  default['fmw']['middleware_home_dir']   = '/opt/oracle/middleware'
  default['fmw']['os_user']               = 'weblogic'
  default['fmw']['os_group']              = 'weblogic'
  default['fmw']['os_shell']              = '/bin/bash'
end

case platform_family
when 'debian', 'rhel'
  default['fmw']['orainst_dir']       = '/etc'
  default['fmw']['user_home_dir']     = '/home'
  default['fmw']['ora_inventory_dir'] = '/home/weblogic/oraInventory'
  default['fmw']['tmp_dir']           = '/tmp'
when 'solaris2'
  default['fmw']['orainst_dir']       = '/var/opt/oracle'
  default['fmw']['user_home_dir']     = '/export/home'
  default['fmw']['ora_inventory_dir'] = '/export/home/oracle/oraInventory'
  default['fmw']['tmp_dir']           = '/var/tmp'
end

