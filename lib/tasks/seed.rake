namespace :seed do

  task :nba => :environment do
    client = EspnClient.new('nba')
    parser = EspnParser.new(client)
    instantiator = EspnInstantiator.new(parser)

    instantiator.instantiate_teams
    instantiator.instantiate_players
  end
end
