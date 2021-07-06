class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@icebreaker.dev'
  layout 'mailer'
end
