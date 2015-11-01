# 日本語入力に関する spec

require 'spec_helper'

packages = %w(ibus-anthy)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
