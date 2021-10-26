require 'rails_helper'

RSpec.describe Post, type: :model do

  it "should have a valid address" do
    expect(build(:post)).to be_valid
    expect(build(:post, author: "abc")).to_not be_valid
    expect(build(:post, author: "??1QntMH187oMcrdtYC2Q927pN8ytqqpwzpgXBmEHNL5Jqj2j2")).to_not be_valid
  end

end
