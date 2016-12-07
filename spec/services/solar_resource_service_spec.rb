require 'rails_helper'

describe "SolarResourceService" do
  context "#annual_averages" do
    it "returns averages for dni, ghi, and lat_tilt" do
      averages = SolarResourceService.new.annual_averages("80202")

      expect(averages.class).to eq(Hash)
      expect(averages).to have_key(:avg_dni)
      expect(averages).to have_key(:avg_ghi)
      expect(averages).to have_key(:avg_lat_tilt)
    end
  end
end
