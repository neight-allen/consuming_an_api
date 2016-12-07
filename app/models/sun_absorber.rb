class SunAbsorber

  attr_reader :avg_dni, :avg_ghi, :avg_lat_tilt

  def initialize(attributes={})
    @avg_dni = attributes[:avg_dni][:annual]
    @avg_ghi = attributes[:avg_ghi][:annual]
    @avg_lat_tilt = attributes[:avg_lat_tilt][:annual]
  end

  def self.by_address(address)
    service = SolarResourceService.new
    service.results.map do |raw_repo|
      SunAbsorber.new(service.annual_averages(address))
    end
  end


end
