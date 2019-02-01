# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/example_mailer/formulariocontacto
  def formulariocontacto
    ExampleMailer.formulariocontacto
  end

end
