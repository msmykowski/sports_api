class EspnParser < ActiveRecord::Base
  def initialize(espn_client)
    @espn_client = espn_client
  end

  def parse_teams
    teams = []
    team_links.each { |team_link| teams.push(package_team(team_link)) }

    teams
  end

  def parse_players(team_abbr, team_name)
    players = []

    tables = get_tables(team_abbr, team_name)

    table_one_data = tables[0]
    table_two_data = tables[1]

    table_length = table_one_data.length

    table_length.times do |i|
      player = package_player(table_one_data[i], table_two_data[i])
      players.push(player)
    end

    players
  end

  private

  def team_links
    page = Nokogiri::HTML(@espn_client.get_teams)
    page.css('h5').css('a')
  end

  def package_team(team_link)
    { name: team_link.text, abbr: team_link['href'].split('/')[7] }
  end

  def get_tables(team_abbr, team_name)
    tables = []
    page = Nokogiri::HTML(@espn_client.get_player_stats(team_abbr, team_name))
    page.css('table').each { |table| tables.push(get_table_data(table)) }
    tables
  end

  def get_table_data(table)
    table.css('.evenrow') + table.css('.oddrow')
  end

  def package_player(table_one, table_two)
    one = table_one.css('td')
    two = table_two.css('td')

    name = one.css('a').text

    player = { name: name, gp: one[1].text, gs: one[2].text,
               min: one[3].text, ppg: one[4].text, offr: one[5].text,
               defr: one[6].text, rpg: one[7].text, apg: one[8].text,
               spg: one[9].text, bpg: one[10].text,
               tpg: one[11].text, fpg: one[12].text, ato: one[13].text,
               per: one[14].text, fgm: two[1].text, fga: two[2].text,
               fg: two[3].text, thpm: two[4].text, thpa: two[5].text, thp: two[6].text,
               ftm: two[7].text, fta: two[8].text, ft: two[9].text,
               tpm: two[10].text, tpa: two[11].text, tp: two[12].text,
               pps: two[13].text, afg: two[14].text }
  end
end
