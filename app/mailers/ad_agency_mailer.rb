class AdAgencyMailer < ActionMailer::Base
  default from: "rocks198325@gmail.com"

  def test_email(adagency)
     @adagency=adagency
     @url="http://10.76.12.162:3000"
     mail(:to=> adagency.email, :subject => "This is test email")
  end
end
