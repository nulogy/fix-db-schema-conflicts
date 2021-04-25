require 'spec_helper'
require 'fix_db_schema_conflicts/autocorrect_configuration'

RSpec.describe FixDbSchemaConflicts::AutocorrectConfiguration do
  subject(:autocorrect_config) { described_class }

  it 'for versions 0.79.0 and above' do
    installed_rubocop(version: '0.79.0')

    expect(autocorrect_config.load).to eq('.rubocop_schema.79.yml')
  end

  def installed_rubocop(version:)
    allow(Gem).to receive_message_chain(:loaded_specs, :[], :version)
      .and_return(Gem::Version.new(version))
  end
end
