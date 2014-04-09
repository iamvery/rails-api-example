class ArticlesController < ApplicationController
  def index
    articles = [
      { id: 123, name: 'The Things' },
    ]

    respond_to do |format|
      format.json do
        render json: articles
      end
    end
  end
end
