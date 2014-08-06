require 'spec_helper'

describe User do
	describe "passwords" do
		it "needs a password and confirmation to save" do
			u = User.new(username: "TestUser")

			u.save
			expect(u).to_not be_valid

			u.password = "password"
			u.password_confirmation = ""
			u.save
			expect(u).to_not be_valid


	     	u.password_confirmation = "password"
		    u.save
		    expect(u).to be_valid
		end

		it "need password and confirmation to match" do
			u = User.create(
				username: "TestUser",
				password: "password2",
				password_confirmation: "pass")
			expect(u).to_not be_valid
		end
	end

	describe "authentication" do
	    let(:user) { User.create(
	      username: "TestUser",
	      password: "password2",
	      password_confirmation: "password2") }

	    it "authenticates with a correct password" do
      		expect(user.authenticate("password2")).to be
  		end

		it "does not authenticate with an incorrect password" do
			expect(user.authenticate("password21")).to_not be		
		end
	end
end

