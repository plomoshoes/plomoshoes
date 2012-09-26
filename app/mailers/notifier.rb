class Notifier < ActionMailer::Base
  
  def buy_notification(shoe, email)
    @shoe = shoe
    @email = email
    mail :from => 'site@plomoshoes.com', :to => 'info@plomoshoes.com', :subject => "[Site] Buy notification of #{@email}"
  end
  
end
