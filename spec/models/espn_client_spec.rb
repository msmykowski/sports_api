require 'rails_helper'

RSpec.describe EspnClient, type: :model do
  context 'when getting NBA stats' do
    let(:team) {FactoryGirl.create(:team)}

    before(:all) do
      @client = EspnClient.new('nba')
    end

    it 'makes a request to the nba teams page' do
      stub_request(:get, "http://espn.go.com/nba/teams")
      response = @client.get_teams
      expect(WebMock).to have_requested(:get ,"http://espn.go.com/nba/teams")
    end

    it 'makes a request to nba players page' do
      stub_request(:get, "http://espn.go.com/nba/teams/stats?team=#{team.abbr}")
      response = @client.get_player_stats(team.abbr, team.name)
      expect(WebMock).to have_requested(:get ,"http://espn.go.com/nba/teams/stats?team=#{team.abbr}")
    end
  end
end
