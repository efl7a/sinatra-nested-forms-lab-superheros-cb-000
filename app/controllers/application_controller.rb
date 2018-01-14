require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/team/:id' do
      @team = Team.find(params[:id])
      @members = Superhero.where("team_id = #{params[:id]}")
      erb :team
    end

    post '/teams' do
      new_team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:members].each do |details|
        hero = Superhero.new(details)
        hero.team = new_team
        hero.save
      end
      redirect to "/team/#{new_team.id}"
    end
end
