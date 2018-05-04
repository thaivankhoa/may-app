class DevelopersController < ApplicationController
  def index
    developers_search = Developer.includes(:languages).includes(:programming_languages)
                                .search_by_pro(params[:programming_languages])
                                .search_by_lan(params[:languages])
                                .pluck(:id)
    @developers = Developer.includes(:languages).includes(:programming_languages).where(id: developers_search)
  end
end
