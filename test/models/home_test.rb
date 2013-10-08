require "test_helper"

describe Home do
  before do
    @home = Home.new
  end

  it "must be valid" do
    @home.valid?.must_equal true
  end
end
