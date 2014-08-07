include ApplicationHelper

def sign_in_as!(user)
  visit signin_path
  fill_in "Username",    with: user.username
  fill_in "Password", with: user.password
  click_button "Sign In"
end