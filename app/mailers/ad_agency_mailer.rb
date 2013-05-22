class AdAgencyMailer < ActionMailer::Base
  default from: "InLife support team"

  def test_email(adagency)
     @adagency=adagency
     @url="http://10.76.12.162:3000"

     attachments["toyo.jpg"]= File.read(File.join(Rails.root,"public","toyo.jpeg"))

     mail(:to=> adagency.email, :subject => "This is test email") do |format|
          format.text
          format.html
     end
  end
end
