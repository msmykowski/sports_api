class EspnInstantiator < ActiveRecord::Base

  def initialize(parser)
    @parser = parser
  end

  def instantiate_teams
    teams.each { |team| Team.create(team)}
  end

  private

  def teams
    @parser.parse_teams
  end
end
