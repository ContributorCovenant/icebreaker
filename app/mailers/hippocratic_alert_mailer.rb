class HippocraticAlertMailer < ApplicationMailer
  def alert(dependency_name)
    @dependency_name = dependency_name
    mail(
      subject: 'Hippocratic License Alert',
      to: ENV['ALERT_EMAIL_ADDRESSES'],
      html_body: "'#{dependency_name}' is using the Hippocratic License!",
      message_stream: 'notifications')
  end
end
