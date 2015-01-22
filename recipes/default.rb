#
# Cookbook Name:: patch
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "patch::analysis"

patch_update "update" do
	update_list node['patching']['missing']
end
