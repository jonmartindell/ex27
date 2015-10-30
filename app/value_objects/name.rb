class Name < Value.new(:name)
  def initialize(name)
    super(name.capitalize)
    validate!
  end

  def to_s
    name
  end

  private
  def validate!
    raise ArgumentError, "Must be at least 2 characters long" unless name.length >= 2
  end
end
