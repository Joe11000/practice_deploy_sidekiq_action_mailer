class VisitorsController < ApplicationController
  def new
  end

  def create 
    VisitorMailer.contact_email(create_params).deliver_later
      flash.now['info'] = 'successfully sent email to ' + create_params['to']
    render :new
  end

  protected 
    def create_params 
      params.require(:email).permit(:to, :subject, :body)
    end
end
