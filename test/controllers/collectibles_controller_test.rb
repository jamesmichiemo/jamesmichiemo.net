require 'test_helper'

class CollectiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collectible = collectibles(:one)
    @update = {
      title: 'lorem ipsum',
      description: 'wibbles are fun',
      image_url: 'lorem.png',
      price: 19.95
    }
  end

  test 'should get index' do
    get collectibles_url
    assert_response :success
  end

  test 'should get new' do
    get new_collectible_url
    assert_response :success
  end

  test 'should create collectible' do
    assert_difference('Collectible.count') do
      post collectibles_url, params: { collectible: @update }
    end

    assert_redirected_to collectible_url(Collectible.last)
  end

  test 'should update collectible' do
    patch collectible_url(@collectible), params: { collectible: @update }

    assert_redirected_to collectible_url(@collectible)
  end

end
