class ListingsController < ApplicationController
  def index
    @listings = listing.all

  end
    def new
    @user = current_user
    @form = CovidForm.new
  end

  def create
    @user = current_user
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

def show
  @user = current_user
  @form = CovidForm.find(params[:id])
end

    private

  def listing_params
    params.require(:listing).permit(:user_id, :location, :pic1, :pic2, :pic3, :pic4, :pic5, :pic6, :pic7, :pic8, :pic9, :pic10, :photo, :price, :description, :beds, :baths, :garages, :sqaurem)
  end

end
