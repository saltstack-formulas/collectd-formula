# frozen_string_literal: true

# Set defaults, use debian as base

pkg = 'collectd-core'

# Override by platform
case platform[:family]
when 'redhat', 'fedora', 'suse'
  pkg = 'collectd'
when 'bsd'
  pkg = 'collectd5'
end

control 'Collectd package' do
  title 'should be installed'

  describe package(pkg) do
    it { should be_installed }
  end
end
