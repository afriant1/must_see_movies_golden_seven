class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find(params["id"])
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    d = Director.new
    d.name = params["the_name"]
    d.bio = params["the_bio"]
    d.dob = params["the_dob"]
    d.image_url = params["image_url"]
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @director = Director.find(params["id"])
    @director.destroy
    render("destroy.html.erb")
  end

  def edit_form
    @director = Director.find(params["id"])
    render("edit_form.html.erb")
  end

  def update_row
      d = Director.find(params["id"])
      d.name = params["the_name"]
      d.bio = params["the_bio"]
      d.dob = params["the_dob"]
      d.image_url = params["image_url"]
      d.save
      render("show.html.erb")
  end


end
