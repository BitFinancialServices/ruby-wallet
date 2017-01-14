notification :terminal_notifier

guard :rspec, cmd: 'bundle exec rspec' do
  watch('spec/spec_helper.rb')                        { "spec" }
  watch(%r{spec/support/.+\.rb$})                     { "spec" }
  watch(%r{^spec/lib/(.+)_spec\.rb$})                 { "spec" }
  watch(%r{^lib/(.+)\.rb$})                           { "spec" }
end
