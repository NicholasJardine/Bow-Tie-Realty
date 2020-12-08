class ListingsController < ApplicationController
  skip_before_action :authenticate_user!


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
  @pictures = []
  if @listing.photo.attached?
     @pictures.push(@listing.photo)
  end
    if @listing.pic1.attached?
     @pictures.push(@listing.pic1)
  end
    if @listing.pic2.attached?
     @pictures.push(@listing.pic2)
  end
    if @listing.pic3.attached?
     @pictures.push(@listing.pic3)
  end
    if @listing.pic4.attached?
     @pictures.push(@listing.pic4)
  end
    if @listing.pic5.attached?
     @pictures.push(@listing.pic5)
  end
    if @listing.pic6.attached?
     @pictures.push(@listing.pic6)
  end
    if @listing.pic7.attached?
     @pictures.push(@listing.pic7)
  end
    if @listing.pic8.attached?
     @pictures.push(@listing.pic8)
  end
    if @listing.pic9.attached?
     @pictures.push(@listing.pic9)
  end
      if @listing.pic10.attached?
     @pictures.push(@listing.pic10)
  end
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
