require 'rake/testtask'

desc 'Run Minitest Tests'

Rake::TestTask.new(:test) do |t|
  
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
end

task :default => :test
