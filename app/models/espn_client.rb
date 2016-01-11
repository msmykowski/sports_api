class EspnClient < ActiveRecord::Base
  def initialize(sport)
    @url = "http://espn.go.com/#{sport}"
  end

  def get_teams
    RestClient.get "#{@url}/teams"
  end

  def get_player_stats(team_abbr, _team_name)
    RestClient.get "#{@url}/teams/stats?team=#{team_abbr}"
  end
end
