class TasksController < ApplicationController
  def index
     # 現在日付を取得 YYYY/mm/dd
    @today_date = Date.today.strftime('%Y-%m-%d')
    @calendar = Calendar.all.select(:dates).where(working_day_flag: 0).pluck(:dates).map{|date| date.strftime("%Y-%m-%d")}
    @cl = @calendar.index(@today_date)
    @cl = @cl.to_i
    @cl_tree_days = @calendar.slice(@cl,3)#今日から３日間
    @tomorrow_date = @cl_tree_days.slice(1)#明日の日付
    @after_tomorrow_date = @cl_tree_days.slice(2)#明後日の日付

    @q = Task.ransack(params[:q])
    @q.sorts ='deliverydate asc' if @q.sorts.empty? ##ソートをデフォルト昇順にする
    @tasks = @q.result(distinct: true).order(deliverydate: :desc).page(params[:page])
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    redirect_to tasks_url,notice: "更新しました。"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_url,notice: "削除しました。"
  end

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to tasks_url, notice: "製品 「#{task.name}」を登録しました。"
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deliverydate, :productno, :client, :qty, :workschedule, :mt, :chip, :kiban)##requireがないとupdateできない。必要

  end
end
