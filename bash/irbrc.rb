#vim:ft=ruby
require 'irb/completion'
require 'rubygems' rescue nil

#############################################
#
# install / configure helpful gems for every irb session
#
#############################################
if defined?(Hirb)
  Hirb.enable
end

#############################################
#
# Helpful utility methods
#
# ###########################################
begin
  class DelayedJob < ApplicationRecord; end

  def delayed_info(from: 0, to: 1_000_000_000, trace: 5)
    DelayedJob.where('id > ?', from).where('id < ?', to).to_a.map do |row|
      klass = YAML::load(row.handler)
      err = row.last_error.nil? ? '' : row.last_error.split("\n")[0, trace].join("\n\t")

      puts "#{row.id}: #{klass.job_data['job_class']} - attempts: #{row.attempts}, run_in: #{(row.run_at - Time.current).round} second"
      puts "\t#{err}"
      puts
    end;
  end
rescue
  puts 'DelayedJob support not available'
end

def env
  ENV.select { |k, _| k =~ /ruby|rails|rack/i }
end

if defined?(Hirb)
  def hr
    Hirb::View.resize
  end

  def hd
    Hirb.disable
  end

  def he
    Hirb.enable
  end
end

def my_helpers
  puts 'delayed_info: information on the delayed_jobs table'
  puts 'hr: resize the hirb printing'
  puts 'hd: disable hirb'
  puts 'he: enable hirb'
  puts 'env: display ruby/rails/rack env variables'
end

