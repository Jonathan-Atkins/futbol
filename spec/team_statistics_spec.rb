require './spec/spec_helper'

RSpec.describe TeamStatistics do 
  before(:each) do 
    game_path = './data/games_dummy.csv'
    team_path = './data/teams_dummy.csv'
    game_teams_path = './data/game_teams_dummy.csv'

    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    @stat_tracker = StatTracker.from_csv(locations)
    @team_statistics = TeamStatistics.new(@stat_tracker.teams, @stat_tracker.games, @stat_tracker)
  end


    describe 'goals scored' do
      it 'counts the highest number of goals score by a team in a single game' do
        expect(@team_statistics.most_goals_scored("5")).to eq(4)
      end

      it 'counts the fewest number of goals score by a team in a single game' do
        expect(@team_statistics.fewest_goals_scored("5")).to eq(0)
      end
    end
    
    describe '#head to head' do
      it 'gives a win percentage against opponents' do        
        houston_record = @team_statistics.head_to_head('6')["Houston Dynamo"]
        expect(houston_record).to eq({wins: 5, losses: 0})
      end
    end

    describe '#favorite opponent' do
      it 'can return the opponent with the lowest win percentage'do
        expect(@team_statistics.favorite_opponent("5")).to eq(0.5)
      end
    end

    # describe '#seasonal summary' do
    #   it 
  
    # end
end