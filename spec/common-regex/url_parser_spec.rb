require_relative "../spec_helper"

describe "URLParser" do

  it "is able to extract the URL from text (format 1)" do
    response = CommonRegex::URLParser.parse("The site is http://google.com")
    puts response.inspect
    expect(response.length).to eq(1)
    expect(response).to include("http://google.com")
  end

end