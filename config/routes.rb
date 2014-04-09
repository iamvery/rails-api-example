Rails.application.routes.draw do
  def api_version(version, &routes)
    api_constraint = ApiConstraint.new(version: version)
    scope(module: "v#{version}", constraints: api_constraint, &routes)
  end

  api_version(1) do
    resources :articles, only: :index
  end

  api_version(2) do
    resources :articles, only: :index
  end
end
