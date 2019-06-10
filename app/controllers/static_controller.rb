class StaticController < ApplicationController
  def index
    render :layout => false
  end
  
  def show
    if template_exists?("#{params[:static_page]}", _prefixes)
      render template: "static/#{params[:static_page]}"
    else
      render file: "#{Rails.root}/public/404", status: :not_found
    end
  end

  def notify
    email = params[:email]
    AdminMailer.notification_mail(email).deliver
    flash.now[:success] = "Thank you for your interest! We will be in touch soon."
    render :new
  end
end
