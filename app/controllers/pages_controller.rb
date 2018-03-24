class PagesController < ApplicationController
  before_action :initialise_slack_invite, only: :home

  def home
    @organisers = Organiser.all
  end

  private

  def initialise_slack_invite
    @slack_invite = SlackInvitation.new
  end
end
