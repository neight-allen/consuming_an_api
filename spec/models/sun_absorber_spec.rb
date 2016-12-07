require 'rails_helper'

describe "SunAbsorber" do
  context ".by_address(address)" do
    it "returns instance of SunAbsorber" do
      sun_absorber = SunAbsorber.by_address("80202")
      expect(sun_absorber).to be_instance_of(SunAbsorber)

      expect(sun_absorber.avg_dni).to eq(5.81)
      expect(sun_absorber.avg_ghi).to eq(4.58)
      expect(sun_absorber.avg_lat_tilt).to eq(5.55)
    end


  end
end
