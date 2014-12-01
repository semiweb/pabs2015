class UserMailer < ActionMailer::Base

  def registration_confirmation(user)
    @user = user
    I18n.locale = @user.language || 'en'
    mail(from: 'lwebb@semiweb.ca', to: user.email, subject: t('user_mailer.registration_confirmation.title'))
  end
end
