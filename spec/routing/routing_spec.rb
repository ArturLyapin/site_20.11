require 'spec_helper'
describe "routing to news" do
  it "routes /news/:id to news#show for id" do
    expect(:get => "/news/1").to route_to(
      :controller => "news",
      :action => "show",
      :id => "1"
    )
  end
end