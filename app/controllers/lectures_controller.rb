class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new
    @lecture.lecture_url = params[:lecture_url]
    @lecture.caption = params[:caption]
    @lecture.lecture_number = params[:lecture_number]
    @lecture.lecture_name = params[:lecture_name]
    @lecture.file_type = params[:file_type]
    @lecture.subject_number = params[:subject_number]
    @lecture.subject_name = params[:subject_name]

    if @lecture.save
      redirect_to "/lectures", :notice => "Lecture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lecture = Lecture.find(params[:id])
  end

  def update
    @lecture = Lecture.find(params[:id])

    @lecture.lecture_url = params[:lecture_url]
    @lecture.caption = params[:caption]
    @lecture.lecture_number = params[:lecture_number]
    @lecture.lecture_name = params[:lecture_name]
    @lecture.file_type = params[:file_type]
    @lecture.subject_number = params[:subject_number]
    @lecture.subject_name = params[:subject_name]

    if @lecture.save
      redirect_to "/lectures", :notice => "Lecture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lecture = Lecture.find(params[:id])

    @lecture.destroy

    redirect_to "/lectures", :notice => "Lecture deleted."
  end
end
