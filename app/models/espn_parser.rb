class EspnParser < ActiveRecord::Base

  def initialize(espn_client)
    @espn_client = espn_client
  end

  def parse_teams
    teams = []
    team_links.each { |team_link| package(team_link, teams)}

    teams
  end


  private

  def team_links
    page = Nokogiri::HTML(@espn_client.get_teams)
    page.css('h5').css('a')
  end

  def package(team_link, teams)
    team = {name: team_link.text, abbr: team_link['href'].split('/')[7]}
    teams.push(team)
  end

end
