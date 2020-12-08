require 'yaml'
class HomeController < ApplicationController


  def index
    @villagers = villagers_data.map { | villager, data | [data['Name'], villager] }
  end

  def show_villager
    @villager_name = params['villager_name'].downcase
    @species = villagers_data[@villager_name]['Species']
    @personality = villagers_data[@villager_name]['Personality']
    @gender = villagers_data[@villager_name]['Gender']
    @birthday = villagers_data[@villager_name]['Birthday']
    @quote = villagers_data[@villager_name]['Quote']
    @catchphrase = villagers_data[@villager_name]['Catchphrase']
  end

  private

  def villagers_data
    @villagers_data ||= YAML.safe_load(File.read('config/data/villagers.yml'))
  end
end
