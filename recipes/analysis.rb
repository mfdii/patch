ohai 'reload_patching' do
  plugin 'patching'
  action :nothing
end

cookbook_file "#{node['ohai']['plugin_path']}/patch_analysis.rb" do
  source 'plugins/patch_analysis.rb'
  owner  'root'
  group  'root'
  mode   '0644'
  notifies :reload, 'ohai[reload_patching]', :immediately
end
 
include_recipe 'ohai::default'