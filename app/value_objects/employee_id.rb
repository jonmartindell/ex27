class EmployeeId < Value.new(:id)
  def initialize(id)
    super(id.upcase)
    validate!
  end

  def to_s
    id
  end

  private
  def validate!
    raise ArgumentError, "Format must be like AA-1234" unless valid?
  end

  def valid?
    /\A[a-zA-Z]{2}-\d{4}\z/ === id
  end


end
