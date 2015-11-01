# GUI に関する spec

require 'spec_helper'

packages = %w(gtk2-engines-murrine)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
