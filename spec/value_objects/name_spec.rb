require "rails_helper"

describe Name do
  it "requires two characters" do
    expect{Name.new("a")}.to raise_error(ArgumentError, /2 characters long/)
  end

  it "accepts a name with 2 or more characters" do
    expect{Name.new("jonathan")}.not_to raise_error
  end

  it "capitalizes the first letter" do
    expect(Name.new("jonathan").to_s).to eq "Jonathan"
  end

end
