class VisitorMailer < ApplicationMailer
  default from: 'jgnoonan27+from@gmail.com'

  def hello_email 
    mail(to: params[:to], subject: params[:subject], body: params[:body])
  end
end
