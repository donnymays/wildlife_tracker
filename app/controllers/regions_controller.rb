class RegionsController < ApplicationControllerclass

  def index
    @regions = Region.all
    render :index
  end

  def new
    @region = Region.new
    render :new
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to regions_path
    else
      render :new
    end
  end

  def edit
    @region = Region.find(params[:id])
    render :edit
  end

  def show
    @region = Region.find(params[:id])
    render :show
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(region_params)
      redirect_to regions_path
    else
      render :edit
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path
  end

  private
  def region_params
    params.require(:region).permit(:name)
  end

end