require "rails_helper"

describe Zipcode do
  it "requires a proper format" do
    expect{Zipcode.new("abc")}.to raise_error ArgumentError
  end

  it "accepts 5 digits as a proper format" do
    expect{Zipcode.new("43215")}.not_to raise_error
  end
end
