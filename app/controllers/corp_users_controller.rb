class CorpUsersController < ApplicationController

  def index
    @corp_user = CorpUser.all.order("created_at DESC")
  end

  def show
    @corp_user = CorpUser.find(params[:id])
  end

end
