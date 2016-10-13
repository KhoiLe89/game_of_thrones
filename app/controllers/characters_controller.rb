class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @house_stark = House.find_by(name: "Stark")
    @stark = Character.where(house: @house_stark)

    @house_lannister = House.find_by(name: "Lannister")
    @lannister = Character.where(house: @house_lannister)

    @house_targaryen = House.find_by(name: "Targaryen")
    @targaryen = Character.where(house: @house_targaryen)
  end
  def show
    @character = Character.find(params[:id])
    # @house = Character.house(:house)
  end
  def new
    @character = Character.new
  end
  def create
    @character = Character.new(characters_params)
    puts @character
    @character.house = House.find_by(name: params[:character][:house])
    @character.save
    redirect_to houses_path
  end
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end
  private
  def characters_params
  params.require(:character).permit(:name, :img_url)
  end
end
