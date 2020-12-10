class HomeController < ApplicationController
  def index
    @villagers = Villager.all
  end

  def show_villager
    @villager = Villager.find_by_id(params['villager_id'])
  end
end


# TODO:
# [DONE] Get villagers into DB (need a Villager model)
# Only show image when villager is selected in form (will images be stored in database?)
# Implement search
