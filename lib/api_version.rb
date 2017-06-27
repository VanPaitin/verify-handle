class ApiVersion
  def initialize(version)
    @version = version
  end

  def matches?(request)
    request.headers["Accept"].include? "application/vnd.handle.#{@version}"
  end
end
