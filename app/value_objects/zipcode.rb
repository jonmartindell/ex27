class Zipcode < Value.new(:zipcode)
  def initialize(zipcode)
    super(zipcode)
    raise ArgumentError, "A zipcode should be more like 43081" if !valid?
  end

  def to_s
    zipcode
  end

  private
  def valid?
    # 5 digits no more no less
    /\A\d{5}\z/ === zipcode
  end

end
