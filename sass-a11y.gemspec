require './lib/sass-a11y'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = SassA11y::VERSION
  s.date = SassA11y::DATE

  # Gem Details
  s.name = "sass-a11y"
  s.rubyforge_project = "sass-a11y"
  s.description = %q{Accessibility helpers for Sass}
  s.summary = %q{Function to assist in accessibility while developing.}
  s.authors = ["Sam Richard"]
  s.email = ["sam@snug.ug"]
  s.homepage = "https://github.com/Team-Sass/sass-a11y"
  s.licenses = ["MIT"]

  # Gem Files
  s.files = ["README.md"]
  s.files += ["CHANGELOG.md"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  s.add_dependency("sass",      ["~>3.4"])
  s.add_dependency("sassy-math",   ["~>1.5"])
end