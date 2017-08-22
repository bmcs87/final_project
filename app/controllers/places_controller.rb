class PlacesController < ApplicationController
  def index
    @places = Place.all

    render("places/index.html.erb")
  end

  def show
    @place = Place.find(params[:id])

    render("places/show.html.erb")
  end

  def new
    @place = Place.new

    render("places/new.html.erb")
  end

  def create
    @place = Place.new

    @place.rank = params[:rank]

    save_status = @place.save

    if save_status == true
      redirect_to("/places/#{@place.id}", :notice => "Place created successfully.")
    else
      render("places/new.html.erb")
    end
  end

  def edit
    @place = Place.find(params[:id])

    render("places/edit.html.erb")
  end

  def update
    @place = Place.find(params[:id])

    @place.rank = params[:rank]

    save_status = @place.save

    if save_status == true
      redirect_to("/places/#{@place.id}", :notice => "Place updated successfully.")
    else
      render("places/edit.html.erb")
    end
  end

  def destroy
    @place = Place.find(params[:id])

    @place.destroy

    if URI(request.referer).path == "/places/#{@place.id}"
      redirect_to("/", :notice => "Place deleted.")
    else
      redirect_to(:back, :notice => "Place deleted.")
    end
  end
end
