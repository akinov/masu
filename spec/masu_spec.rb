RSpec.describe Masu do
  it "has a version number" do
    expect(Masu::VERSION).not_to be nil
  end

  it "Enclose text in a frame" do
    expect('hote'.to_masu).to eq("┌----┐\n│hote│\n└----┘\n")
  end
end
