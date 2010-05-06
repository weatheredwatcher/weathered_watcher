class UserMailer < ActionMailer::Base

  def contact(sent_at = Time.now)
    @subject = 'A email for you'
    @body = {}
    @recipients = ''
    @from = ''
    @sent_on = sent_at
    @headers
  end
    

end
