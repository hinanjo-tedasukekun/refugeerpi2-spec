# Wi-Fi アクセスポイントに関する spec

require 'spec_helper'

packages = %w(
libnl-3-200
libnl-genl-3-200
libnl-route-3-200
libssl1.0.0
dnsmasq
iw)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

describe file('/usr/local/sbin/hostapd') do
  it { should be_executable }
end

describe host('hinan') do
  it { should be_resolvable }
end
