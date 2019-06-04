class HomeController < ApplicationController
before_action :common, :only => [:index, :team]





  def common
    
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_job = Faker::Company.bs
    @corp_title = Faker::Job.title 
    @hero_descriptor = Faker::Superhero.descriptor
    @rand_num = rand(1...1000)

    @rand_set = rand(1..4)
    if @rand_set == 1
      @set_num = "set4"
    elsif @rand_set == 2
      @set_num = "set3"
    elsif @set_num == 3
      @set_num = "set2"
    else
      @set_num = "set1"
    end


    @bg_set = rand(1..4)
    if @bg_set == 1
      @bg_num = "bg1"
    elsif @bg_set == 2
      @bg_num = "bg2"
    elsif @bg_num == 3
      @bg_num = "bg3"
    else
      @bg_num = "bg4"
    end

    @hero_image = Faker::Avatar.image(@rand_num, "300x300", "png", @set_num, @bg_num)
  end

  def index
  end

  def team 
  end
  
  def heroes
  end

end


