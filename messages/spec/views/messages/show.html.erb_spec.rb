require 'rails_helper'

describe "messages/show.html.erb" do
  it "displays the text attribute of the message" do
    assign(:message, double("Message", :text => "Hello world!"))
    render
    rendered.should match("Hello world!")
  end
end
