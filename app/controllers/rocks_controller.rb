class RocksController < ApplicationController
  def index
    @rocks = Rock.all
    json_response(@rocks)
  end

  def show
    @rock = Rock.find(params[:id])
    json_response(@rock)
  end

  def by_name
    @rock = Rock.by_name(params[:name])
    json_response(@rock)
  end

  def create
    @rock = Rock.create!(rock_params)
    json_response(@rock, :created)
  end

  def update
    @rock = Rock.find(params[:id])
    if @rock.update!(rock_params)
      render status: 200, json: {
        message: "Rock updated!"
      }
    end
  end

  def destroy
    @rock = Rock.find(params[:id])
    if @rock.destroy!
      render status: 200, json: {
        message: "Rock deleted!"
      }
    end
  end

  private
  def rock_params
    params.permit(:name)
  end

end
