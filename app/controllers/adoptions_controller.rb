class AdoptionsController < ApplicationController
  before_action :set_tree, only: %i[new create destroy]
  def new
    @adoption = Adoption.new
  end

  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.user = current_user
    @adoption.tree = @tree
    @adoption.starts_at = Date.today
    @adoption.ends_at = @adoption.starts_at + 1.year
    if @adoption.save!
      redirect_to tree_path(@tree)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

  def adoption_params
    params.require(:adoption).permit(:name, :starts_at, :ends_at, :tree_id)
  end
end
