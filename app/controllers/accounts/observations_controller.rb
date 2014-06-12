class Accounts::ObservationsController < ApplicationController

  def index
    # @observations = current_user.observations
    render
  end

  def new
    @observation = Observation.new
    @account = current_user.account
    @site_names = current_user.account.sites
  end
  
end