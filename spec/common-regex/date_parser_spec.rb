require_relative "../spec_helper"

describe "DateParser" do

  it "is able to extract date from text (format 1)" do
    response = CommonRegex::DateParser.parse("Lets meet on 7th Dec 2013 or 12/12/2013")
    expect(response.length).to eq(2)
    #expect(response).to include("7th Dec 2013")
    #expect(response).to include("12/12/2013")
  end

end