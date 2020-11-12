class HomeController < ApplicationController
  def index
    @villagers = [['Hazel', 'hazel'], ['Sterling', 'sterling'], ['Poppy', 'poppy'], ['Pango', 'pango']]
  end

  def show_villager
    @villager_name = params['villager_name'].downcase
  end
end
