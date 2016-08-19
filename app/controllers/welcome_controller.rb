class WelcomeController < ApplicationController
  before_action :stream_video
  before_action :collect_message
end
