class DestroyAgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def destroy_agenda_mail(agenda)
    @agenda = agenda
    @users_email = @agenda.team.users.pluck(:email)
    mail to: @users_email, subject: I18n.t('views.messages.agenda_destroy')
  end
end


