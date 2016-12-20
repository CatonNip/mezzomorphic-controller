class InputsController < ApplicationController

  def create
    @input = Input.new(input_params)

    if @input.save
      render json: @input, status: :created, location: @input
    else
      render json: @input.errors, status: :unprocessable_entity
    end

  end 

  private

  def input_params
    params.require(:input).permit(:name, :artist, :url)
  end
end