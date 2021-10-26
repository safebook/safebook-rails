require 'rails_helper'

RSpec.describe Field, type: :model do

  it "should have a valid address" do
    expect(build(:field)).to be_valid
    expect(build(:field, author: "abc")).to_not be_valid
    expect(build(:field, author: "??1QntMH187oMcrdtYC2Q927pN8ytqqpwzpgXBmEHNL5Jqj2j2")).to_not be_valid
  end

end
