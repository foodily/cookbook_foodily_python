#
# Cookbook Name:: foodily_python
# Recipe:: default
#
# Copyright (C) 2014 Foodily, Inc
# 
# All rights reserved - Do Not Redistribute
#


include_recipe "python"
#this should be a dynamic loop with hash of plugins and versions, or databag.
python_pip "redis" do 
 	version node[:foodily_python]['redis']['version']
end 

package "libmysqlclient-dev" do
  action :install
end

python_pip "MySQL-python" do
        version node[:foodily_python]['mysql']['version']
end
