# Web アプリに関する spec

packages = %w(nginx firebird2.5-superclassic firebird-dev nodejs)

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

# Rails のバージョンが 4.2.x
describe command('/usr/local/rbenv/shims/rails --version') do
  its(:stdout) { should match(/^Rails 4\.2\./) }
end
