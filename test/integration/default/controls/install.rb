# frozen_string_literal: true

# Set defaults, use debian as base

pkg = 'collectd-core'

# Override by OS
case os[:name]
when 'redhat', 'centos', 'fedora', 'opensuse', 'oracle'
  pkg = 'collectd'
when 'freebsd'
  pkg = 'collectd5'
end

control 'Collectd package' do
  title 'should be installed'

  describe package(pkg) do
    it { should be_installed }
  end
end
