class Notifier < ActionMailer::Base
  
  default :from => 'website@plomony.com'
  
  def buy_notification(shoe, email)
    @shoe = shoe
    @email = email
    mail :to => 'info@plomony.com', :subject => "[website] Buy notification of #{@email}"
  end
  
end
