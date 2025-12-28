class BambooController < ApplicationController
  def new
    @bamboo = Bamboo.new
  end

  def create
    @bamboo = Bamboo.new(bamboo_params)

    if @bamboo.valid?
      # Bamboo は保存しない設計なので、ここでは redirect のみ
      redirect_to root_path, notice: "思いのたけを受け付けました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bamboo_params
    params.require(:bamboo).permit(:content)
  end
end
