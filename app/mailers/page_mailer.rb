class PageMailer < ActionMailer::Base
  default from: 'alex@farviewsoft.com'

  def confirmation_email(email = '')
    if email == ''
      email = 'amcritchie@gmail.com'
    end
    mail(to: email, subject: 'Test Email')
  end

  def conf_test
    # @to = 'alex@farviewsoft.com'
    @to = 'amcritchie@gmail.com'
    mail(to: @to, subject: 'Test Email')
  end
end
