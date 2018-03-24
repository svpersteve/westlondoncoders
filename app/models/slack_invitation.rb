class SlackInvitation
  def send_invite(email)
    RestClient.get invite_url(email)
  end

  def invite_url(email)
    "https://slack.com/api/users.admin.invite?token=#{ENV['SLACK_TOKEN']}&email=#{email}"
  end
end
