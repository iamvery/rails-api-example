module V2
  class ArticlesController < ApplicationController
    def index
      articles = [
        { id: 123, name: 'The Things' },
      ]

      respond_to do |format|
        format.any(:articles_json, :json) do
          render json: { articles: articles }
        end
      end
    end
  end
end
