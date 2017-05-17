class UserMailer < ApplicationMailer
  def contact_us
    mail(to: 'jamieronin@gmail.com', subject: 'Requesting Information')
  end
end
