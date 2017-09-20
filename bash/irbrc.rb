#vim:ft=ruby
require 'irb/completion'
require 'rubygems' rescue nil

#############################################
#
# install helpful gems for every irb session
#
#############################################
if defined?(Hirb)
  Hirb.enable

  def resize
    return 'Hirb not loaded' unless defined?(Hirb)

    width = `tput cols`.to_i
    Hirb.enable(width: width, pager: false)
    'Resized';
  end

  def wide
    return 'Hirb not loaded' unless defined?(Hirb)
    Hirb.enable(width: 250);
  end
end

if defined?(AwesomePrint)
  AwesomePrint.irb!
end

#############################################
#
# Helpful utility methods
#
# ###########################################
begin
  require 'hirb/import_object'

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

def my_helpers
  puts 'delayed_info: information on the delayed_jobs table'
  puts 'resize: Hirb.enable(width: `tputs cols`)'
  puts 'wide: Hirb.enable(width: 250)'
end

