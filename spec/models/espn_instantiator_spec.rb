require 'rails_helper'

RSpec.describe EspnInstantiator, type: :model do
  context 'when instantiating NBA models' do
    before(:all) do
      @espn_client = EspnClient.new('nba')
      @parser = EspnParser.new(@espn_client)
      @instantiator = EspnInstantiator.new(@parser)
    end

    it 'creates team models' do
      allow(@parser).to receive(:parse_teams).and_return([{name: 'team_name', abbr: 'team_abbr'}, {name: 'team_name_2', abbr: 'team_abbr_2'}])
      expect(Team.all.length).to eq(0)
      @instantiator.instantiate_teams
      expect(Team.all.length).to eq(2)
    end
  end
end
