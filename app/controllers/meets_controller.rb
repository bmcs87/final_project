class MeetsController < ApplicationController
  def index
    @meets = Meet.all

    render("meets/index.html.erb")
  end

  def show
    @meet = Meet.find(params[:id])

    render("meets/show.html.erb")
  end

  def new
    @meet = Meet.new

    render("meets/new.html.erb")
  end

  def create
    @meet = Meet.new

    @meet.meet_name = params[:meet_name]
    @meet.city = params[:city]
    @meet.state = params[:state]
    @meet.date = params[:date]
    @meet.places_id = params[:places_id]
    @meet.athlete_notes = params[:athlete_notes]

    save_status = @meet.save

    if save_status == true
      redirect_to("/meets/#{@meet.id}", :notice => "Meet created successfully.")
    else
      render("meets/new.html.erb")
    end
  end

  def edit
    @meet = Meet.find(params[:id])

    render("meets/edit.html.erb")
  end

  def update
    @meet = Meet.find(params[:id])

    @meet.meet_name = params[:meet_name]
    @meet.city = params[:city]
    @meet.state = params[:state]
    @meet.date = params[:date]
    @meet.places_id = params[:places_id]
    @meet.athlete_notes = params[:athlete_notes]

    save_status = @meet.save

    if save_status == true
      redirect_to("/meets/#{@meet.id}", :notice => "Meet updated successfully.")
    else
      render("meets/edit.html.erb")
    end
  end

  def destroy
    @meet = Meet.find(params[:id])

    @meet.destroy

    if URI(request.referer).path == "/meets/#{@meet.id}"
      redirect_to("/", :notice => "Meet deleted.")
    else
      redirect_to(:back, :notice => "Meet deleted.")
    end
  end
end
