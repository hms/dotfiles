require 'fileutils'

desc "Install dotfiles."
task :install do
  Dir["#{File.dirname __FILE__}/**/*.copy"].each do |copy_file|
    dest_file = %Q{#{ENV['HOME']}/.#{File.basename( copy_file ).chomp(".copy")}}

    if File.exists? dest_file
      puts "#{dest_file} exists -- skipping"
    else
      FileUtils.cp copy_file, dest_file 
    end
  end

  Dir["#{File.dirname __FILE__}/**/*.symlink"].each do |symlink_file|
    dest_file = %Q{#{ENV['HOME']}/.#{File.basename( symlink_file ).chomp(".symlink")}}

    if File.exists?(dest_file) || File.symlink?(dest_file)
      puts "#{dest_file} exists -- skipping"
    else
      FileUtils.ln_s symlink_file, dest_file 
    end
  end
end
