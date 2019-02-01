class ExampleMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.example_mailer.formulariocontacto.subject
  #
  def formulariocontacto(contacto)
    puts contacto.to_yaml
    @contacto = contacto.body
    @greeting = "Hi #{contacto.email}"
    mail(to: 'thewebsyco@gmail.com', subject: contacto.title)
  end
end
