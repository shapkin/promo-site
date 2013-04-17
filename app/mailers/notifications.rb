class Notifications < ActionMailer::Base
  default from: "from@example.com"
 
  def contact_us(contact_form)
    @contact_form = contact_form
    managers = User.managers.map{ |a| a.email }
    mail(from: contact_form.email, to: managers, :subject => "New Contact Us message")
  end
end
