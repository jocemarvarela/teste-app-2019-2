require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "valida login obrigatorio" do
    u = User.new
    u.name = "Carlos alberto"
    u.password = "123456456"
    u.login = ""
    assert u.valid?
  end

  test "valida usuario com login informado" do
    u = User.new
    u.name = "Carlos alberto"
    u.password = "123456"
    u.login = "carlos"
    assert u.valid?
  end

  test "valida geracao login" do
    u = User.new
    u.name = "josEMar"    
    assert_equal u.generate_login, "josemar"
  end

  test "valida se determina o login na validacao" do
    u = User.new
    u.name = "Josemar"
    u.password = "pwd"
    assert u.valid?
    assert_equal u.login, "josemar"
  end
end
