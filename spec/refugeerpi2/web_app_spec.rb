# Web アプリに関する spec

packages = %w(nginx firebird2.5-superclassic firebird-dev nodejs)
services = %w(refugee-webapp refugee-input-server refugee-com-server)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

services.each do |s|
  describe service(s) do
    it { should be_enabled }
  end
end

# Rails のバージョンが 4.2.x
describe command('/usr/local/rbenv/shims/rails --version') do
  its(:stdout) { should match(/^Rails 4\.2\./) }
end
