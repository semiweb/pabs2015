class UserMailer < ActionMailer::Base

  def registration_confirmation(user)
    @user       = user
    I18n.locale = @user.language || 'en'
    mail(from: 'leslie@semiweb.ca', to: user.email, subject: t('user_mailer.registration_confirmation.title'))
  end


  def registration_notification_to_admins(user)
    @user       = user
    I18n.locale = 'en'
    mail(from: 'leslie@semiweb.ca', to: default_email, subject: t('user_mailer.registration_notification.title'))
  end


  def abstract_copy_to_admins(abstract)
    @abstract = abstract
    mail(from: abstract.author.try(:email) || 'noreply@semiweb.ca', to: default_email, title: 'New abstract on Pabs2015')
  end


  def default_email
    Rails.env.production? ? 'leslie@semiweb.ca' : 'matthieu.beauche@semiweb.ca'
  end
end
