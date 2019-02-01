require 'test_helper'

class ExampleMailerTest < ActionMailer::TestCase
  test "formulariocontacto" do
    mail = ExampleMailer.formulariocontacto
    assert_equal "Formulariocontacto", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
