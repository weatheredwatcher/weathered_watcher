class UserMailer < ActionMailer::Base

  def message_from_visitor(email = 'anon@example.net', message)
    @subject = "Email sent via your website"
    @body['message'] = message
    @recipients = "youraddress@example.com"
    @from = email
    @sent_on = Time.now
    @headers = {}
  end
    

end
