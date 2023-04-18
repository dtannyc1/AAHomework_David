class UserMailer < ApplicationMailer
    def welcome_email(user, url)
        @user = user
        # @url = new_session_url
        @url = url
        mail(to: user,
            subject: "Welcome to 99 cats",
            from: "99catsadmin@appacademy.io")
    end
end
