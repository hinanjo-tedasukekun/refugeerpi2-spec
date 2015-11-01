# フォントに関する spec

require 'spec_helper'

packages = %w(fonts-takao fonts-migmix)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
