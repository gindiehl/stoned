class MineralsController < ApplicationController
  def index
    @rock = Rock.find(params[:rock_id])
    @minerals = @rock.minerals
    json_response(@minerals)
  end

  def show
    @rock = Rock.find(params[:rock_id])
    @mineral = @rock.minerals.find(params[:id])
    json_response(@mineral)
  end

  def create
    @rock = Rock.find(params[:rock_id])
    @mineral = @rock.minerals.create!(mineral_params)
    json_response(@mineral, :created)
  end

  def update
    @rock = Rock.find(params[:rock_id])
    @mineral = Mineral.find(params[:id])
    if @mineral.update!(mineral_params)
      render status: 200, json: {
        message: "Crystallized!"
      }
    end
  end

  def destroy
    @mineral = Mineral.find(params[:id])
    if @mineral.destroy!
      render status: 200, json: {
        message: "Removed!"
      }
    end
  end

  private
  def mineral_params
    params.permit(:name, :category, :image, :crystal_system, :color, :crystal_habit, :cleavage, :hardness, :luster, :streak, :diaphaneity, :geo_location, :rock_id)
  end
end
