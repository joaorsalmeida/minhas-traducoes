class TranslationsController < ApplicationController

  def new
    @translation = Translation.new
  end

  def create
    port = params[:translation][:portuguese]
    eng = params[:translation][:english]
    author = params[:translation][:author]
    #strong parameters -> Rails Guides > Controllers
    t = Translation.new(portuguese: port, english: eng, author: author)
    t.save

    redirect_to root_url
  end

  def show
    id = params[:id]
    @translation = Translation.find(id)
  end

  def edit
    id = params[:id]
    @translation = Translation.find(id)
  end

  def update
    port = params[:translation][:portuguese]
    eng = params[:translation][:english]
    author = params[:translation][:author]

    @translation = Translation.find(params[:id])
    @translation.update(portuguese: port, english: eng, author: author)

    redirect_to translation_path(@translation)
  end

end


