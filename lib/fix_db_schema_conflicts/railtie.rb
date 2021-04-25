require 'fix-db-schema-conflicts'
require 'rails'

module FixDbSchemaConflicts
  class Railtie < Rails::Railtie
    railtie_name :fix_db_schema_conflicts
    rake_tasks do
      load "fix_db_schema_conflicts/tasks/db.rake"
    end
  end
end
