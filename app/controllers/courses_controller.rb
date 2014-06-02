class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new
    @course.course_url = params[:course_url]
    @course.caption = params[:caption]
    @course.course_number = params[:course_number]
    @course.course_name = params[:course_name]
    @course.file_type = params[:file_type]
    @course.subject_number = params[:subject_number]

    if @course.save
      redirect_to "/courses", :notice => "Course created successfully."
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    @course.course_url = params[:course_url]
    @course.caption = params[:caption]
    @course.course_number = params[:course_number]
    @course.course_name = params[:course_name]
    @course.file_type = params[:file_type]
    @course.subject_number = params[:subject_number]

    if @course.save
      redirect_to "/courses", :notice => "Course updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])

    @course.destroy

    redirect_to "/courses", :notice => "Course deleted."
  end

# def youtube_embed(youtube_url)
#   if youtube_url[/youtu\.be\/([^\?]*)/]
#     youtube_id = $1
#   else
#     # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
#     youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
#     youtube_id = $5
#   end

#   %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
# end

end
