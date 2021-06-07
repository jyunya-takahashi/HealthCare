class ActionlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @params = params[:date].to_time
    # 行動データの取得
    @actionlogs = Actionlog.where(date: @params.all_day).where(user_id: @current_user.id).order('date ASC')
    @actionlog = Actionlog.new(date: @params)
  end

  def create
    actionlog = Actionlog.new(actionlog_params)
    if actionlog.save
      flash[:notice] = "「#{actionlog.date}」の行動記録を登録しました"
      redirect_to healths_path
    else
      flash[:error_messages] = actionlog.errors.full_messages
      redirect_back(fallback_location: actionlog_new_path)
    end
  end

  def edit
  end

  private

  def actionlog_params
    params.require(:actionlog).permit(:date, :serial_num, :start_time, :end_time, :destination, :transportation, :departure, :arrival, :attendees, :attendees_details, :other, :user_id)
  end
end
