class EmailsController < ApplicationController
  def new
  end

  def create 
    SayHelloMailer.with(create_params).hello_email.deliver_later
    render :new, flash.now.info 'successfully sent email to ' + create_params['to']
  end

  protected 
    def create_params 
      params.require(:email).permit(:to, :subject, :body)
    end
end
