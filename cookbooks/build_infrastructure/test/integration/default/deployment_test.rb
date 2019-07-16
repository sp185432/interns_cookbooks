# # encoding: utf-8

# Inspec test for recipe build_infrastructure::deployment

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

describe directory('c:\deployment_dir') do
  it { should exist }
end

describe file('c:\deployment_dir\my_sample_go.exe') do
  it { should exist }
end
