require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  context "validations" do
    it "validates" do

       user = AdminUser.new(email: 'foo@bar.com', role: 'admin', name: 'Foo', password: 'password')
       expect(user).to be_valid

       expect(AdminUser.new).to_not be_valid
    end
  end
end
