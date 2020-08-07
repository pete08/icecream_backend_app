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
    render "show.json.jb"
  end

  def update
    @flavor = Flavor.find_by(id: params[:id])
    @flavor.update(
      name: params[:name] || @flavor.name,
      ingredients: params[:ingredients] || @flavor.ingredients,
      image_url: params[:image_url] || @flavor.image_url,
    )
    render "show.json.jb"
  end

  def destroy
    @flavor = Flavor.find_by(id: params[:id])
    @flavor.delete()
    render json: {deleted: "successfully deleted flavor!"}
  end

end
