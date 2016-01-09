require 'rails_helper'

RSpec.describe EspnClient, type: :model do
  context 'when getting NBA stats' do
    before(:all) do
      @client = EspnClient.new('nba')
    end

    it 'makes a request to the nba teams page' do
      stub_request(:get, "http://espn.go.com/nba/teams")
      response = @client.get_teams
      expect(WebMock).to have_requested(:get ,"http://espn.go.com/nba/teams")
    end

    it 'makes a request to nba players page' do
      stub_request(:get, "http://espn.go.com/nba/team/stats/_/name/ny/new-york-knicks")
      response = @client.get_player_stats('ny', 'new-york-knicks')
      expect(WebMock).to have_requested(:get ,"http://espn.go.com/nba/team/stats/_/name/ny/new-york-knicks")
    end
  end
end
