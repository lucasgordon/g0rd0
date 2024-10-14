class SubscriptionMailer < ApplicationMailer
  default from: 'Lucas Gordon <lucastgordon@gmail.com>'

  def confirmation_email(email)
    @email = email
    mail(to: @email, subject: 'Subscription confirmed for G0RD0.com')
  end
end
