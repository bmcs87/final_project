class ActualTimesController < ApplicationController
  def index
    @actual_times = ActualTime.all

    render("actual_times/index.html.erb")
  end

  def show
    @actual_time = ActualTime.find(params[:id])

    render("actual_times/show.html.erb")
  end

  def new
    @actual_time = ActualTime.new meet_id: params[:meet_id]

    render("actual_times/new.html.erb")
  end

  def create
    @actual_time = ActualTime.new

    @actual_time.time = params[:time]
    @actual_time.meet_id = params[:meet_id]
    @actual_time.place = params[:place]
    @actual_time.goal_times_id = params[:goal_times_id]

    #raise @actual_time.valid?.inspect
    save_status = @actual_time.save

    if save_status == true
      redirect_to("/actual_times/#{@actual_time.id}", :notice => "Actual time created successfully.")
    else
      render("actual_times/new.html.erb")
    end
  end

  def edit
    @actual_time = ActualTime.find(params[:id])

    render("actual_times/edit.html.erb")
  end

  def update
    @actual_time = ActualTime.find(params[:id])

    @actual_time.time = params[:time]
    @actual_time.meet_id = params[:meet_id]
    @actual_time.place = params[:place]
    @actual_time.goal_times_id = params[:goal_times_id]

    save_status = @actual_time.save

    if save_status == true
      redirect_to("/actual_times/#{@actual_time.id}", :notice => "Actual time updated successfully.")
    else
      render("actual_times/edit.html.erb")
    end
  end

  def destroy
    @actual_time = ActualTime.find(params[:id])

    @actual_time.destroy

    if URI(request.referer).path == "/actual_times/#{@actual_time.id}"
      redirect_to("/", :notice => "Actual time deleted.")
    else
      redirect_to(:back, :notice => "Actual time deleted.")
    end
  end
end
