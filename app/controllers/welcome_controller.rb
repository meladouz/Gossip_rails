class WelcomeController < ApplicationController
  def name
    @name = params[:name]
    puts "Coucouc ce sont les params : #{params}"
  end
end
