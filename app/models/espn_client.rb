class EspnClient < ActiveRecord::Base

  def initialize(sport)
    @url = "http://espn.go.com/#{sport}"
  end

  def get_teams
    RestClient.get "#{@url}/teams"
  end

  def get_player_stats(city_abbr, team_name )
    RestClient.get "#{@url}/team/stats/_/name/#{city_abbr}/#{team_name}"
  end

end
