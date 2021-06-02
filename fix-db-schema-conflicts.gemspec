lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fix_db_schema_conflicts/version'

Gem::Specification.new do |spec|
  spec.name          = 'fix-db-schema-conflicts'
  spec.version       = FixDbSchemaConflicts::VERSION
  spec.authors       = ['Jake Moffatt', 'Alistair McKinnell']
  spec.email         = ['jakeonrails@gmail.com', 'alistairm@nulogy.com']
  spec.summary       = 'Helps prevent unneeded db/schema.rb conflicts'
  spec.description   = 'Ensures consistent output of db/schema.rb despite local differences in the database'
  spec.homepage      = 'https://github.com/nulogy/fix-db-schema-conflicts'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7', '< 3.1'

  spec.add_dependency 'rubocop', '~> 1.0'

  spec.add_development_dependency 'appraisal', '~>2.4'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rails', '~> 6.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~>3.10'
  spec.add_development_dependency 'rubocop-rails', '~>2.9'
  spec.add_development_dependency 'rubocop-rake', '~>0.5.1'
  spec.add_development_dependency 'rubocop-rspec', '~>2.2'
  spec.add_development_dependency 'sqlite3', '~> 1.4'
end
