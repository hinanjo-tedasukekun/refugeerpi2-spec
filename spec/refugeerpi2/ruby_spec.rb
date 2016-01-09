# Ruby に関する spec

packages = %w(
autoconf
bison
build-essential
libssl-dev
libyaml-dev
libreadline6-dev
zlib1g-dev
libncurses5-dev
libffi-dev
libgdbm3
libgdbm-dev
)

packages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/usr/local/rbenv/bin/rbenv') do
  it { should be_executable }
end

# Ruby のバージョンが 2.3.0
describe command('/usr/local/rbenv/shims/ruby --version') do
  its(:stdout) { should match(/^ruby 2\.3\.0/) }
end
