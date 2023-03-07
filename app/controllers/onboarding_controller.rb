class OnboardingController < ApplicationController
  include Wicked::Wizard
  steps :type, :geolocalisation, :type_of_plants

  def type
    @garden = Garden.new

  end

  def show
    render_wizard
  end

end
