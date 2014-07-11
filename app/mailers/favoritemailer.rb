class Favoritemailer < ActionMailer::Base
  default from: "rey@innovativeops.co"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    headers["Message-ID"] = "<comments/#{@comment.id}@bloccit.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@bloccit.example>"
    headers["References"] = "<post/#{@post.id}@bloccit.example>"

    mail(to: user.email, subject "New comment on #{post.title}")
  end
end

