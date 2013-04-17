class ContactUsMailer < ActionMailer::Base
  default from: "from@example.com"
 
  def contact_us(contact_form)
    @contact_form = contact_form
    mail(from: contact_form.email, to: "admin@example.com", :subject => "New Contact Us message")
  end
end
