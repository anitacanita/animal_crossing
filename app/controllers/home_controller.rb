class HomeController < ApplicationController
  def index
    @villagers = villagers_data.map { | villager, data | [data['Name'], villager] }
  end

  def show_villager
    @villager_name = params['villager_name'].downcase
    get_villager_data_for(@villager_name)
  end

  private

  def villagers_data
    @villagers_data ||= YAML.safe_load(File.read('config/data/villagers.yml'))
  end

  def get_villager_data_for(name)
    villager = villagers_data[name]

    @species = villager['Species']
    @personality = villager['Personality']
    @gender = villager['Gender']
    @birthday = villager['Birthday']
    @quote = villager['Quote']
    @catchphrase = villager['Catchphrase']
  end
end
