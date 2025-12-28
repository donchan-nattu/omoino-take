class HomeController < ApplicationController
  def index
  end

  def new
    @bamboo = Bamboo.new
  end

  def create
    @bamboo = Bamboo.new(bamboo_params)

    if @bamboo.valid?
      # 保存しないなら save しない
      redirect_to root_path, notice: "投稿を受け付けました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bamboo_params
    params.require(:bamboo).permit(:content)
  end
end
