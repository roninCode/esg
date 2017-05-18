class UserMailer < ApplicationMailer
  def contact_us
    mail(to: 'jamieronin@gmail.com', subject: 'Requested Information from EthiCapital')
  end
end
