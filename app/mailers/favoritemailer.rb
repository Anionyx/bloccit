class Favoritemailer < ActionMailer::Base
  default from: "rey@innovativeops.co"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    headers["Message-ID"] = "<comments/#{@comment.id}@reybloccit.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{@post.id}@reybloccit.herokuapp.com>"
    headers["References"] = "<post/#{@post.id}@reybloccit.herokuapp.com>"

    mail(to: user.email, subject "New comment on #{post.title}")
  end
end

