require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "valida login obrigatorio" do
    u = User.new
    u.name = "Carlos alberto"
    u.password = "123456"
    u.login = ""
    assert_not u.valid?
  end

  test "valida usuario com login" do
    u = User.new
    u.name = "Carlos alberto"
    u.password = "123456"
    u.login = "carlos"
    assert u.valid?
  end
end
