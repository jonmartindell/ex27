class EmployeeSignupForm < Form
  attribute :first_name, Name
  attribute :last_name, Name
  attribute :employee_id, EmployeeId
  attribute :zipcode, Zipcode

  private
  def form_errors
    result = []
    result << {error: name_requirement} if name_requirement
    result
  end

  def name_requirement
    unless first_name{''}.present? || last_name{''}.present?
      InvalidFormError.new("Either First or Last name must be specified")
    end
  end
end

