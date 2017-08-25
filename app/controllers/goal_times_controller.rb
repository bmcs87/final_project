class GoalTimesController < ApplicationController
  def index
    @goal_times = GoalTime.all

    render("goal_times/index.html.erb")
  end

  def show
    @goal_time = GoalTime.find(params[:id])

    render("goal_times/show.html.erb")
  end

  def new
    @meets = Meet.where(:user_id => current_user.id)
    @goal_time = GoalTime.new meet_id: params[:meet_id]

    render("goal_times/new.html.erb")
  end

  def create
    @goal_time = GoalTime.new

    @goal_time.time = params[:time]
    @goal_time.actual_time = params[:actual_time]
    @goal_time.meet_id = params[:meet_id]
    @goal_time.users_id = params[:users_id]

    #xraise @goal_time.valid?.inspect
    save_status = @goal_time.save

    if save_status == true
      redirect_to("/goal_times/#{@goal_time.id}", :notice => "Goal time created successfully.")
    else
      render("goal_times/new.html.erb")
    end
  end

  def edit
    @goal_time = GoalTime.find(params[:id])
    @meet = @goal_time.meet

    render("goal_times/edit.html.erb")
  end

  def update
    @goal_time = GoalTime.find(params[:id])

    @goal_time.time = params[:time]
    # @goal_time.actual_time = params[:actual_time]
    @goal_time.meet_id = params[:meet_id]
    # @goal_time.users_id = params[:users_id]

    save_status = @goal_time.save

    if save_status == true
      redirect_to("/goal_times/#{@goal_time.id}", :notice => "Goal time updated successfully.")
    else
      render("goal_times/edit.html.erb")
    end
  end

  def destroy
    @goal_time = GoalTime.find(params[:id])

    @goal_time.destroy

    if URI(request.referer).path == "/goal_times/#{@goal_time.id}"
      redirect_to("/", :notice => "Goal time deleted.")
    else
      redirect_to(:back, :notice => "Goal time deleted.")
    end
  end
end
