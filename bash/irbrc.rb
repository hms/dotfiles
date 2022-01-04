#vim:ft=ruby

#############################################
#
# install / configure helpful gems for every irb session
#
#############################################

#############################################
#
# Helpful utility methods
#
# ###########################################
begin
  # Non-rails behavior goes here
  return unless defined?(Rails) == 'constant'

  unless defined?(DelayedJob) == 'constant'
    class DelayedJob < ApplicationRecord; end
  end

  # Add Rails version to the env and .rails_version (so we can add it to the prompt)
  File.open('.rails_version', 'w') { |f| f.write(Rails.version) }
  ENV['RAILS_VERSION'] = Rails.version
rescue
end

def env
  ENV.select { |k, _| k =~ /ruby|rails|rack/i }
end

class Object
  def lm
    (methods - Object.instance_methods).sort
  end
end

# copy a string to the clipboard
def cp(string)
  `echo "#{string} | pbcopy`
  puts 'copied to clipboard'
end

if File.exist?('.irbrc')
  puts "Executing project local .irbrc"
  eval(File.read('.irbrc')) 
end

def ll
  puts '***'
  puts 'cp(string): copy string to clipboard'
  puts 'env: display ruby/rails/rack env variables'
  puts 'lm: local methods for this object'
  puts '***'
end
