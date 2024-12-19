class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path, notice: "Exame criado com sucesso."
    else
      render :new
    end
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def update
    @exam = Exam.find(params[:id])
    if @exam.update(exam_params)
      redirect_to exams_path, notice: "Exame atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy
    redirect_to exams_path, notice: "Exame removido com sucesso."
  end

  private

  def exam_params
    params.require(:exam).permit(:grade_id, :subject_id, :shift_id, :professor_id, :step, :exam_type, :date, :status)
  end
end
