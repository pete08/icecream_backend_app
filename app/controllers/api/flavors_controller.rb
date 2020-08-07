class Api::FlavorsController < ApplicationController
  
  def index
    @flavors = Flavor.all
    render "index.json.jb"
  end

  def show
    @flavor = Flavor.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @flavor = Flavor.create!(
      name: params[:name] ,
      ingredients: params[:ingredients] ,
      image_url: params[:image_url] ,
    )
    render json: {awesome: "You successfully created a flavor"}
  end

end
