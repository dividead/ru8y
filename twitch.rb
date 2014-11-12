class GamesController < ApplicationController
  def index
    ping if Game.all.size == 0
    @games = Game.all
  end
  
  def ping
    require 'json'
    
    g = `curl -H 'Accept: application/vnd.twitchtv.v2+json' -X GET https://api.twitch.tv/kraken/games/top?limit=10`
    JSON.parse(g)['top'].each do |i|
      Game.where(name: i['game']['name'], url: i['game']['box']['small']).first_or_create
    end
    redirect_to action: 'index'
  end
  
end
