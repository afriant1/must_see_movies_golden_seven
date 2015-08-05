class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])
  end

  def new_form
  end

  def create_row
    a = Actor.new
    a.name = params["the_name"]
    a.bio = params["the_bio"]
    a.dob = params["the_dob"]
    a.image_url = params["image_url"]
    a.save
    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    @actor = Actor.find(params["id"])
    @actor.destroy
  end

  def edit_form
    @actor = Actor.find(params["id"])
  end

  def update_row
      a = Actor.find(params["id"])
      a.name = params["the_name"]
      a.bio = params["the_bio"]
      a.dob = params["the_dob"]
      a.image_url = params["image_url"]
      a.save
      redirect_to("http://localhost:3000/actors")
  end
end
