class Api::V1::CafesController < ApplicationController

  def index
    if params[:title].present?
      @cafes = Cafe.where('title ILIKE ?', "%#{params[:title]}%")
    else
      @cafes = Cafe.all
    end
  # render json: @cafes (already define in the route "namespace :api, defaults: { format: :json }")
  end

  def create

  end
end
