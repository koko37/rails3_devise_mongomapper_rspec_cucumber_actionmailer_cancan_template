class DevelopmentMailInterceptor
   def self.delivering_email(message)
     puts "\n\n\n Before sending email, this method will be invoked.................\nAnd you can keep touch......\n"
     message.subject = "[#{message.to}] #{message.subject}"
     message.to = CONFIG[:intercept_email_address] 
   end
end
