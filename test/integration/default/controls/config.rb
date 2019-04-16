# Set defaults, use debian as base

config = '/etc/collectd/collectd.conf'

# Override by OS
case os[:name]
when 'redhat', 'fedora', 'centos', 'opensuse'
  config = '/etc/collectd.conf'
when 'freebsd'
  config = '/usr/local/etc/collectd.conf'
end

control 'Collectd configuration' do
  title 'should match desired lines'

  describe file(config) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
  end
end

