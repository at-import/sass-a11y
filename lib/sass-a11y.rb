base_directory  = File.expand_path(File.join(File.dirname(__FILE__), '..'))
a11y_stylesheets_path = File.join(base_directory, 'stylesheets')

if (defined? Compass)
  require 'sass-a11y'
  Compass::Frameworks.register(
    "sassy-math",
    :path => base_directory
  )
else
  ENV["SASS_PATH"] = [ENV["SASS_PATH"], a11y_stylesheets_path].compact.join(File::PATH_SEPARATOR)
end

module SassA11y
  VERSION = "0.1.0"
  DATE = "2014-09-25"
end