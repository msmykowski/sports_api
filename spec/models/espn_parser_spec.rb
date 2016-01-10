require 'rails_helper'

RSpec.describe EspnParser, type: :model do
  context 'when parsing NBA data' do
    let(:team) {FactoryGirl.create(:team)}

    before(:all) do
      @espn_client = EspnClient.new('nba')
      @parser = EspnParser.new(@espn_client)
    end

    it 'returns an array of NBA team objects' do
      allow(@espn_client).to receive(:get_teams).and_return(File.open(File.expand_path("../../../test/fixtures/nba_teams_page.html", __FILE__)))
      teams = @parser.parse_teams
      first_team = teams[0]
      expect(teams.length).to eq(30)
      expect(first_team[:name]).to eq("Boston Celtics")
      expect(first_team[:abbr]).to eq("bos")
    end

    it 'returns an array of NBA player objects' do
      allow(@espn_client).to receive(:get_player_stats).and_return(File.open(File.expand_path("../../../test/fixtures/nba_player_stats.html", __FILE__)))
      players = @parser.parse_players(team.abbr, team.name)
      first_player = players[0]
      expect(first_player[:name]).to eq("Avery Bradley")
      expect(first_player[:fgm]).to eq("5.7")
    end
  end
end
