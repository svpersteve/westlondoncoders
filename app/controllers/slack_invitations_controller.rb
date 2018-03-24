class SlackInvitationsController < ApplicationController
  def new
    @invite = SlackInvitation.new
  end

  def create
    @invite = SlackInvitation.new.send_invite(slack_invite_params[:email])
    redirect_to root_path, notice: 'Invitation sent, please check your email.'
  end

  private

  def slack_invite_params
    params.permit(:email)
  end
end
