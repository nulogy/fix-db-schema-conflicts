require 'fix_db_schema_conflicts/rubocop_version'

module FixDbSchemaConflicts
  class AutocorrectConfiguration
    include FixDbSchemaConflicts::RubocopVersion

    def self.load
      new.load
    end

    def load
      if less_than_rubocop?(49)
        '.rubocop_schema.yml'
      elsif less_than_rubocop?(53)
        '.rubocop_schema.49.yml'
      elsif less_than_rubocop?(69)
        '.rubocop_schema.53.yml'
      elsif less_than_rubocop?(79)
        '.rubocop_schema.69.yml'
      else
        '.rubocop_schema.79.yml'
      end
    end
  end
end
