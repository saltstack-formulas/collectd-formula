# frozen_string_literal: true

config_plugin_file =
  case platform[:family]
  when 'redhat', 'fedora'
    '/etc/collectd.d/postgresql.conf'
  when 'suse'
    '/usr/lib64/collectd/postgresql.conf'
  else
    '/etc/collectd/plugins/postgresql.conf'
  end

control 'Collectd service' do
  title 'should be running and enabled'

  describe service('collectd') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

  describe file(config_plugin_file) do
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    it { should be_readable.by('others') }
    it { should_not be_writable.by('others') }
    it { should_not be_executable.by('others') }
  end

  describe file(config_plugin_file) do
    it { should exist }
    it { should be_file }
    its(:content) { should match(/<Plugin postgresql>/) }
    its(:content) { should match(/<Database foo>/) }
    its(:content) { should match(/<Database bar>/) }

    its(:content) { should match(/<Query magic>/) }
    its(:content) { should match(/<Query rt36_tickets>/) }
    its(:content) { should match(/Statement */) }
  end
end
