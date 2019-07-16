# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'build_infra'

# Where to find external cookbooks:
#default_source :supermarket
default_source :chef_server, "http://192.168.33.101/organizations/interns"

# run_list: chef-client will run these recipes in the order specified.
run_list %w(
  build_infrastructure::default
)

# Specify a custom source for a single cookbook:
cookbook 'build_infrastructure', path: '.'
