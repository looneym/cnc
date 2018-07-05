class WelcomeController < ApplicationController
  def index
    render :text => "mkdir i_was_created_by_the_payload"
  end
end
