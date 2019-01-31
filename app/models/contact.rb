class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "kayracz@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

include MailForm::Delivery

  append :remote_ip, :user_agent, :session
  attributes :name, :email, :created_at

  def headers
    {
      :to => "kayracz@gmail.com",
      :subject => "User created an account"
    }
  end
end
