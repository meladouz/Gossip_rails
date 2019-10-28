class StaticController < ApplicationController
  def team
  end

  def contact
  end

### pour construire l'index ###
  def index
    @gossips = Gossip.all
  end
## pages individuelles des gossips
  def show_gossip
    @gossips = Gossip.all
    @users = User.all
  end
  def show_autor
    @gossips = Gossip.all
    @users = User.all
  end
end
