require 'fix_db_schema_conflicts/schema_dumper'

module FixDbSchemaConflicts
  require 'fix_db_schema_conflicts/railtie' if defined?(Rails)
end
