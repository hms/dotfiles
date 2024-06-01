#vim:ft=ruby

#############################################
#
# install / configure helpful gems for every irb session
#
#############################################

class Object
  def lm
    (methods - Object.instance_methods).sort
  end
end

