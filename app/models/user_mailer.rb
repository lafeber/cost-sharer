class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Activeer je account'
  
    @body[:url]  = "http://www.kostendeler.nl/activate/#{user.activation_code}"
  
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Je account is geactiveerd!'
    @body[:url]  = "http://YOURSITE/"
  end
  
  protected
    def setup_email(user)
      @recipients  = "#{user.login}"
      @from        = "kostendeler@coupling.nl"
      @subject     = "kostendeler.nl "
      @sent_on     = Time.now
      @body[:user] = user
    end
end
