class ListingsController < ApplicationController
  def index
    @user = current_user
    @listings = Listing.all

  end
    def new
    @user = current_user
    @listing = Listing.new
  end

  def create
    @user = current_user
    @listing = Listing.create!(listing_params)

    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

def show
  @user = current_user
  @listing = Listing.find(params[:id])
end


  def edit
    @user = current_user
    @listing = Listing.find(params[:id])

  end

  def update
  @listing = Listing.find(params[:id])
  @listing.update(listing_params)
  redirect_to listing_path(@listing)
  end

  def destroy
  @listing = Listing.find(params[:id])
  @listing.destroy

  redirect_to :root
  end

    private

  def listing_params
    params.require(:listing).permit(:user_id, :location, :pic1, :pic2, :pic3, :pic4, :pic5, :pic6, :pic7, :pic8, :pic9, :pic10, :photo, :price, :description, :beds, :baths, :garages, :sqaurem)
  end

end
