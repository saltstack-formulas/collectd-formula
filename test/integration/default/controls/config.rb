# frozen_string_literal: true

# Set defaults, use debian as base

config = '/etc/collectd/collectd.conf'

# Override by platform
case platform[:family]
when 'redhat', 'fedora', 'suse'
  config = '/etc/collectd.conf'
when 'bsd'
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
