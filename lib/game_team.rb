class GameTeam
  attr_reader :game_id,
              :team_id,
              :HoA,
              :result,
              :settled_in,
              :head_coach,
              :goals,
              :shots,
              :tackles,
              :giveaways,
              :takeaways

  def initialize(data)
    @game_id = data["game_id"]
    @team_id = data["team_id"]
    @HoA = data["HoA"]
    @result = data["result"]
    @settled_in = data["settled_in"]
    @head_coach = data["head_coach"]
    @goals = data["goals"]
    @shots = data["shots"]
    @tackles = data["tackles"]
    @giveaways = data["giveaways"]
    @takeaways = data["takeaways"]
  end
end