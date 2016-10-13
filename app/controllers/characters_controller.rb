class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end
  def show
    @character = Character.find(params[:id])
  end
  def new
    @character = Character.new
  end
  def update
    @character = Character.create(characters_params)
    redirect_to root_path
  end
  private
  def characters_params
  params.require(:character).permit(:name, :img_url, :house_id, :house, :alive, :special)
  end
end
