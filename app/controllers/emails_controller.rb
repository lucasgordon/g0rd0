class EmailsController < ApplicationController
  def create
    @email = Email.new(email_params)
    if @email.save
      SubscriptionMailer.confirmation_email(@email.email).deliver_now
      redirect_to root_path, notice: "You have subscribed."
    else
      redirect_to root_path, notice: @email.errors.full_messages.to_sentence
    end
  end

  private

  def email_params
    params.require(:email).permit(:email)
  end
end
