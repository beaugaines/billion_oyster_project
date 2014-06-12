class Account::ObservationsController < ApplicationController

  def index
    # @observations = current_user.observations
    render
  end

  def new
    @observation = Observation.new
    @site_names = current_user.account.sites
  end
  
end