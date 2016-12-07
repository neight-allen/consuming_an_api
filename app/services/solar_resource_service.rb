class SolarResourceService
  def initialize
    @base_url = "https://developer.nrel.gov/api/solar/solar_resource/v1.json"
  end

  def annual_averages(address)
    uri = URI("#{@base_url}?api_key=#{ENV['nrel_api_key']}&address=#{address}")
    response = Net::HTTP.get(uri)
    parsed_response = JSON.parse(response, symbolize_names: true)
    parsed_response[:outputs]
  end
end
