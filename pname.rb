#!/Users/JT/.rbenv/shims/ruby
require 'yaml'
require 'pry'
require 'pathname'

CONFIG_DIR = '.pname'
CONFIG_FILE = 'config'

def exit_with
  yield if block_given?
  exit
end

def config_dir(dir = Pathname.new("."))
  target = dir + CONFIG_DIR

  if dir.children.include? target
    return target.expand_path
  else
    config_dir(dir_parent) unless dir.expand_path.root?

  end
end

def config_file
  config_dir.to_s + File::SEPARATOR + CONFIG_FILE
end

if !Dir.exists?(config_dir)
  exit_with {puts "Error: can't find config dir!"}
end
  if !File.exists?(config_file)
    exit_with { puts "Error: can't find config file!"}
end

config = YAML.load_file(config_file)

if !config || !config.keys.include?('name')
  exit_with {puts "Error: missing 'name' "}
end

puts "Hi #{config['name']}"
