class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find(params[:id])
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.lecture_id = params[:lecture_id]
    @enrollment.subject_id = params[:subject_id]
    @enrollment.user_name = params[:user_name]
    @enrollment.subject_number = params[:subject_number]

    if @enrollment.save
      redirect_to "/enrollments", :notice => "Enrollment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])

    @enrollment.lecture_id = params[:lecture_id]
    @enrollment.subject_id = params[:subject_id]
    @enrollment.user_name = params[:user_name]
    @enrollment.subject_number = params[:subject_number]

    if @enrollment.save
      redirect_to "/enrollments", :notice => "Enrollment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])

    @enrollment.destroy

    redirect_to "/enrollments", :notice => "Enrollment deleted."
  end
end
