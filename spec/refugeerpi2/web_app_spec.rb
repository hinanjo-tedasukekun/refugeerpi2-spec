# Web アプリに関する spec

packages = %w(
nginx
sqlite3
libsqlite3-dev
firebird2.5-superclassic
firebird-dev
nodejs
)
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

describe file('/etc/nginx/sites-available/refugee_manager') do
  it { should be_exist }
end

describe file('/etc/nginx/sites-enabled/refugee_manager') do
  it { should be_linked_to('../sites-available/refugee_manager') }
end
