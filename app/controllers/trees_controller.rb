class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(params_tree)
    @tree.user = current_user
    if @tree.save!
      redirect_to tree_path(@tree)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    @tree.update!(params_tree)
    redirect_to tree_path(@tree)
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy!
    redirect_to trees_path, status: :see_other
  end

  private

  def params_tree
    params.require(:tree).permit(:name, :address, :description, :fruit_type, :price_per_year, :quantity_per_year)
  end
end
