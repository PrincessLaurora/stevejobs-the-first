class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      redirect_to new_listing path
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end  

private

 def listing_params
   params.require(:listing).permit(:title, :location, :description, :employment_type, :requirements, :restribution)
 end
end
