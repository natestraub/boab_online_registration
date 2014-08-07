include ApplicationHelper

def sign_in_as!(user)
  visit signin_path
  fill_in "Username",    with: user.username
  fill_in "Password", with: user.password
  click_button "Sign In"
end

module AuthHelpers
  def sign_in(user)
    session[:user_id] = user.id
  end
end

RSpec.configure do |c|
  c.include AuthHelpers, type: :controller
end