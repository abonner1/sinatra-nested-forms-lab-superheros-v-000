require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heros].each do |hero_data|
        hero = Hero.new(hero_data)
        hero.team = @team
        hero.save
      end
      erb :team
    end

end
