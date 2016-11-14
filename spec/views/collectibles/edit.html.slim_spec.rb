require 'rails_helper'

RSpec.describe "collectibles/edit", :type => :view do
  before(:each) do
    @collectible = assign(:collectible, Collectible.create!(
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit collectible form" do
    render

    assert_select "form[action=?][method=?]", collectible_path(@collectible), "post" do

      assert_select "input#collectible_title[name=?]", "collectible[title]"

      assert_select "textarea#collectible_description[name=?]", "collectible[description]"

      assert_select "input#collectible_image_url[name=?]", "collectible[image_url]"

      assert_select "input#collectible_price[name=?]", "collectible[price]"
    end
  end
end
