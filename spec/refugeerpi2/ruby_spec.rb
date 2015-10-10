# Ruby のバージョンが 2.2.3
describe command('/usr/local/rbenv/shims/ruby --version') do
  its(:stdout) { should match(/^ruby 2\.2\.3/) }
end
