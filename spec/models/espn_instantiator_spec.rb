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

    it 'creates player models' do
      allow(@parser).to receive(:parse_teams).and_return([{name: 'team_name', abbr: 'team_abbr'}])
      allow(@parser).to receive(:parse_players).and_return([
       {name: 'player_one' , gp:1 , gs:1 , min:1 , ppg:1 , offr:1 ,
       defr:1 , rpg:1 , apg:1 , spg:1 , bpg:1 , tpg:1  , fpg:1  , ato:1  ,
       per:1  , fgm:1 , fga:1 , fg:1 , thpm:1 , thpa:1 , thp:1 ,
       ftm:1 , fta:1 , ft: 1, tpm: 1 , tpa:1  , tp:1 , pps:1  , afg:1  },
       {name: 'player_two' , gp:2 , gs:2 , min:2 , ppg:2 , offr:2 ,
       defr:2 , rpg:2 , apg:2 , spg:2 , bpg:2  , tpg:2  , fpg: 2 , ato: 2 ,
       per:2  , fgm:2 , fga:2 , fg:2 , thpm:2 , thpa:2 , thp:2 ,
       ftm:2 , fta:2 , ft:2 , tpm:2  , tpa: 2 , tp:2  ,pps:2  , afg:2  } ])
      expect(Player.all.length).to eq(0)
      @instantiator.instantiate_players
      expect(Player.all.length).to eq(2)
    end
  end
end
