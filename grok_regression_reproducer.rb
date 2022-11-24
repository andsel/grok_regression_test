# encoding: utf-8


# 
# bundle install && bundle exec ruby grok_regression_reproducer.rb
#
# with JRuby 9.2.20 very fast but with 9.3.4+ is slow

require "securerandom"
require "grok-pure"


puts ">>> Grok setup, using JRuby #{JRUBY_VERSION}"

pattern = "%{GREEDYDATA}(Cannot|Failed) login (?<user>\S+) %{GREEDYDATA}"
grok = Grok.new
grok.add_patterns_from_file("grok-patterns")
grok.compile(pattern, true)

puts ">>> Grok instantiated and start processing"
start_time = Time.now

rand_str = SecureRandom.alphanumeric(5000)
msg = "foo bar blubb cannot login i123456 #{rand_str}"
#10000.times do
100.times do
  grok.execute(msg)
end
stop_time = Time.now

execution_time = stop_time - start_time
puts ">>> Grok terminated, executes in #{execution_time} sec"