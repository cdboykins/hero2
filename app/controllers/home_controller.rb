class HomeController < ApplicationController
before_action :common, :only => [:index, :team]
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_prefix = Faker::Superhero.prefix
    @hero_suffix = Faker::Superhero.suffix
    @hero-descriptor = Faker::Superhero.descriptor
  end

  def index
  end

  def team 
  end
  
  def heroes
  end

end
