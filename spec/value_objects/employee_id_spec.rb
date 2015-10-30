require "rails_helper"

describe EmployeeId do
  it "requires a proper format" do
    expect{EmployeeId.new("bad")}.to raise_error /Format must be like/
  end

  it "accepts a format of 2 letters, hyphen, 4 digits" do
    expect{EmployeeId.new("AA-2552")}.not_to raise_error
  end

  it "capitalizes the letters in the id" do
    expect(EmployeeId.new("aa-5252").to_s).to eq "AA-5252"
  end

end
