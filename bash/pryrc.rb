# if this should be added to my .dot files
begin
  if defined?(PryByebug)
    Pry.commands.alias_command 'c', 'continue'
    Pry.commands.alias_command 's', 'step'
    Pry.commands.alias_command 'n', 'next'
    Pry.commands.alias_command 'f', 'finish'
  end
rescue LoadError
  puts 'Pry load error'
end
#############################################
#
# Helpful utility methods
#
# ###########################################

