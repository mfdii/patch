use_inline_resources

action :update do
	update_list = new_resource.update_list

	update_list.each do | key,pkg |
		package pkg['name'] do
			action :upgrade
			version pkg['version']
		end
	end
end