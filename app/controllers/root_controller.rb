class RootController < ApplicationController
  def index
    message = Message.order('RANDOM()').first
    render json: { text: message.greeting }
  end
end
