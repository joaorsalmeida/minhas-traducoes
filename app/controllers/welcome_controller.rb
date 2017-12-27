class WelcomeController < ApplicationController
  def index
    @traducoes = Translation.all
  end
end
