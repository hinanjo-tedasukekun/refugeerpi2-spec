require 'spec_helper'

packages = %w(hostapd dnsmasq)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

describe host('hinan') do
  it { should be_resolvable }
end
