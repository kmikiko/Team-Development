class OwnerChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_change_mail(team,email)
    @team = team
    @email = email
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
end
