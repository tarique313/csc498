class NotificationsMailer < ActionMailer::Base
default :from => "noreply@servicley.io"
  default :to => "tarique@servicley.io"

  def new_message(message)
    @message = message
    mail(:subject => "[servicley.io] #{message.subject}")
  end
end
