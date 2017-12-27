class HomeController < ApplicationController
  def index
    @traducoes = Translation.all
  end
end
