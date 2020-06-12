class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path(@report),notice: 'レポートを登録しました'
    else
      flash.now[:alert] = '全ての項目を入力してください。'
      render :new
    end
  end

  def edit
  end
  
  private
  def report_params
    params.require(:report).permit(:report_name, :company, :proposal_amount, :result_amout, :date, :proposal_content, :result_content).merge(user_id: current_user.id)
  end

end
