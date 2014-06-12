class Users::ObservationsController < ApplicationController

  def index
    # @observations = current_user.observations
    render
  end

  def new
    @observation = Observation.new
  end
  
end