require "rails_helper"

describe EmployeeSignupForm do
  describe "#valid?" do
    it "requires all 4 fields"
  end

  describe "#errors" do
    context "when no last_name is given" do
      it "will say Last Name is required" do
        expected_text = "last_name is required"
        expect(EmployeeSignupForm.new.errors).to include expected_text
      end
    end
    context "when an invalid zipcode is given" do
      it "will include that message as well" do
        expected_text1 = "last_name is required"
        expected_text2 = "A zipcode should be more like 43081"
        subject = EmployeeSignupForm.new(zipcode: "aa")
        expect(subject.errors).to include expected_text1
        expect(subject.errors).to include expected_text2
      end
    end

    context "when a last_name and valid zipcode are provided" do
      it "will be an empty array" do
        subject = EmployeeSignupForm.new(last_name: "martindell", zipcode: "43215")
        expect(subject.errors).to eq []
      end
    end

  end

  describe "first_name"
  describe "last_name"
  describe "employee_id"
  describe "zipcode"
end
