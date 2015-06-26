class HtmlController < ActionController::Base

  def index
  end

  def confirmation_email
    render 'page_mailer/confirmation_email'
  end

  def send_confirmation_email
    @email = params[:confirmation_email][:email]
    PageMailer.confirmation_email(@email).deliver
    redirect_to root_path
  end
end
