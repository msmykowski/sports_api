class EspnInstantiator < ActiveRecord::Base

  def initialize(parser)
    @parser = parser
  end

  def instantiate_teams
    teams.each { |team| Team.create(team) }
  end

  def instantiate_players
    teams.each do |team|
      players(team[:abbr], team[:name]).each { |player| Player.create(player) }
    end
  end

  private

  def teams
    @parser.parse_teams
  end

  def players(team_abbr, team_name)
    @parser.parse_players(team_abbr, team_name)
  end
end
