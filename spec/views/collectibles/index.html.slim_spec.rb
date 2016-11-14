require 'rails_helper'

RSpec.describe "collectibles/index", :type => :view do
  before(:each) do
    assign(:collectibles, [
      Collectible.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      ),
      Collectible.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of collectibles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
