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

  def create
    @account = current_user.account
    @observation = @account.observations.build(observation_params)
    @observation.user_id = current_user.id
    if @observation.save
      redirect_to root_path, notice: 'Observation recorded'
    else
      flash[:alert] = 'Observation was not recorded'
      render :new
    end
  end
  
  private

  def observation_params
    params.require(:observation).permit(:account, :user, :site_name, :wind_speed,
                                 :humidity, :sky_conditions, :recent_weather,
                                 :time_of_monitor, :high_tide_level, :approx_tide_level,
                                 :water_conditions, :oyster_cage_conditions,
                                 :land_conditions, :oyster_survey, :reef_associate_survey,
                                 :water_quality_assessment, :general_observations, )
  end
  
end