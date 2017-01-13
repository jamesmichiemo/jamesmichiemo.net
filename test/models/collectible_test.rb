require 'test_helper'

class CollectibleTest < ActiveSupport::TestCase
  fixtures :collectibles

  test "collectible attributes must not be empty" do
    collectible = Collectible.new
    assert collectible.invalid?
    assert collectible.errors[:title].any?
    assert collectible.errors[:description].any?
    assert collectible.errors[:price].any?
    assert collectible.errors[:image_url].any?
  end

  test "collectible price must be positive" do
		collectible = Collectible.new(title: "My Book Title",
																	description: "xxx",
																	image_url: 'zzz.jpg')
		collectible.price = -1
		assert collectible.invalid?
		assert_equal ["must be greater than or equal to 0.01"], 
      collectible.errors[:price]

		collectible.price = 0
		assert collectible.invalid?
		assert_equal ["must be greater than or equal to 0.01"], 
      collectible.errors[:price]
		
    collectible.price = 1
		assert collectible.valid?
  end

  def new_collectible(image_url)
    Collectible.new(title: "My Book Title",
                    description: 'yyy',
                    price: 1,
                    image_url: image_url)
  end

  test "image_url" do
    ok = %w{ james.gif james.jpg james.png JAMES.JPG JAMEs.Jpg
    http://a.b.c/x/y/z/james.gif }
    bad = %w{ james.doc james.gif/more JAMES.gif.more }
    ok.each do |name|
      assert new_collectible(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_collectible(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "collectible is not valid without a unique title - i8n" do
    collectible = Collectible.new(title: collectibles(:one).title,
                                  description: "yyy",
                                  price: 1,
                                  image_url: "james.gif")
    assert collectible.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], collectible.errors[:title]
  end
end
