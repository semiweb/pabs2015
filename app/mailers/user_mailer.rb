class UserMailer < ActionMailer::Base

  def registration_confirmation(user)
    @user       = user
    I18n.locale = @user.language || 'en'
    mail(from: 'lwebb@semiweb.ca', to: user.email, subject: t('user_mailer.registration_confirmation.title'))
  end


  def abstract_copy_to_admins(abstract)
    @abstract = abstract
    if admins = User.where(is_admin: true).presence
      mail(from: abstract.author.try(:email) || 'noreply@semiweb.ca', to: admins.map(&:email), title: 'New abstract on Pabs2015')
    end
  end
end
