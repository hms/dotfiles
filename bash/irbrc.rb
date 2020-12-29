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
  class DelayedJob < ApplicationRecord; end
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

# sets defaults for TablePrint, if it's installed
if defined?(TablePrint)
  if defined?(User)
    tp.set User, :id, :email, :first_name, :last_name, :title, :updated_at
  end

  if defined?(Practice)
    tp.set Practice, :id, :name, :addr1, :city, :state, :zip
  end

  if defined?(Viewer)
    tp.set Viewer, :login, :practice_id, { encounter_id: lambda { |e| e.encounter_id[0..12] } }, :sign_in_count, :current_sign_in_at, :last_sign_in_at
  end

  if defined?(Encounter)
    tp.set Encounter, { id: lambda { |e| e.id[0..12] } }, :practice_id, :user_id, :completed_at, :updated_at
  end
end

def ll
  puts '***'
  puts 'cp(string): copy string to clipboard'
  puts 'env: display ruby/rails/rack env variables'
  puts 'lm: local methods for this object'
  puts '***'
end

