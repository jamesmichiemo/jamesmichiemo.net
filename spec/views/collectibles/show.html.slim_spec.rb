require 'rails_helper'

RSpec.describe "collectibles/show", :type => :view do
  before(:each) do
    @collectible = assign(:collectible, Collectible.create!(
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/9.99/)
  end
end
