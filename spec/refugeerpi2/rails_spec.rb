# Rails のバージョンが 4.2.x
describe command('/usr/local/rbenv/shims/rails --version') do
  its(:stdout) { should match(/^Rails 4\.2/) }
end
