require File.expand_path('../lib/siatra', __FILE__)
Gem::Specification.new do |s|
  s.name = %q{siatra}
  s.version = Siatra::VERSION.dup
  s.date = Time.now.strftime('%Y-%m-%d')

  s.summary = %q{Siatra: reversed art'izing tool}
  s.description = %q{To convert your artistic code to non-artistic code.}

  s.author = 'ujihisa'
  s.email  = %q{ujihisa at gmail.com}

  s.files =
    Dir['lib/**/*'] +
    Dir['bin/**/*'] +
    Dir['spec/**/*'] +
    %w{ siatra.gemspec README.md }

  s.require_paths = ["lib"]
  s.executables = ['siatra']
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.homepage = %q{https://github.com/ujihisa/siatra}

  s.extra_rdoc_files = %w< README.md >

  #s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
end
