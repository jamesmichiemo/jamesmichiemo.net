require 'rails_helper'

RSpec.describe "collectibles/new", :type => :view do
  before(:each) do
    assign(:collectible, Collectible.new(
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new collectible form" do
    render

    assert_select "form[action=?][method=?]", collectibles_path, "post" do

      assert_select "input#collectible_title[name=?]", "collectible[title]"

      assert_select "textarea#collectible_description[name=?]", "collectible[description]"

      assert_select "input#collectible_image_url[name=?]", "collectible[image_url]"

      assert_select "input#collectible_price[name=?]", "collectible[price]"
    end
  end
end
