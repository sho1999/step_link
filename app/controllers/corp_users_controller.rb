class CorpUsersController < ApplicationController
  before_action :search_corp, only: [:index, :search]
  before_action :move_to_index, except: [:index, :search]


  def index
    @corp_user = CorpUser.all.order("created_at DESC")
  end

  def show
    @corp_user = CorpUser.find(params[:id])
  end

  def search
    @results = @p.result
  end

  private
  def search_corp
    @p = CorpUser.ransack(params[:q])
  end

  def move_to_index
    unless student_user_signed_in? || corp_user_signed_in?
      redirect_to action: :index
      flash[:alert] = "ログイン/新規登録をして下さい"
    end
  end
end
