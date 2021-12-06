class CorpUsersController < ApplicationController

  def show
    @corp_user = CorpUser.find(params[:id])
  end

end
