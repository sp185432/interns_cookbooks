# # encoding: utf-8

# Inspec test for recipe build_infrastructure::build_infra

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe chocolatey_package('vscode') do
  it { should be_installed }
end

describe chocolatey_package('jenkins') do
  it { should be_installed }
end

describe chocolatey_package('git') do
  it { should be_installed }
end

describe chocolatey_package('golang') do
  it { should be_installed }
end

describe chocolatey_package('7zip') do
  it { should be_installed }
end

describe chocolatey_package('openjdk') do
  it { should be_installed }
end

describe directory('c:\users\vagrant\.ssh') do
  it { should exist }
end

describe file('c:\users\vagrant\.ssh\id_rsa') do
  it { should exist }
end
