require 'rails_helper'
RSpec.describe User, type: :model do
  it "should not save if name already exists." do
   User.create(
    name: "Jane",
    description: "Good girl"
   )
   user = User.new(
    name: "Jane",
    description: "Bad girl"
   )
   expect(user).to be_invalid
  end



  it "should not save if name field is blank." do
   user = User.new(
    name: ''
   )
   expect(user).to be_invalid
  end

   it "should not save if description field is blank." do
   user = User.new(
    description: ''
   )
   expect(user).to be_invalid
  end

  end


end