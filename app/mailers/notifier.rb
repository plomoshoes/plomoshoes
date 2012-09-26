class Notifier < ActionMailer::Base
  
  default :from => 'website@plomoshoes.com'
  
  def buy_notification(shoe, email)
    @shoe = shoe
    @email = email
    mail :to => 'info@plomoshoes.com', :subject => "[website] Buy notification of #{@email}"
  end
  
end
