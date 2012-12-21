class FeedbacksController < ApplicationController
#def handle_unverified_request
#    logger.info 'FAIL!!!!!!!!!!!!!!!!'
#  end

  # GET /feedbacks/new
  # GET /feedbacks/new.json
  def new
    @feedback = Feedback.new
    @job=Job.find_by_id(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @feedback }
    end
  end

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @feedback = Feedback.new(params[:feedback])
    if params[:feedback][:file_path]
      @feedback.file_path=params[:feedback][:file_path].path
      @feedback.file_name=params[:feedback][:file_path].original_filename
    end
    
    respond_to do |format|
      
      if @feedback.save
        if APP_CONFIG['USING_DJ']
          ConfirmationEmail.delay.admin_received(@feedback)
        else
          ConfirmationEmail.admin_received(@feedback).deliver
        end
 
        #format.html { redirect_to @feedback }
        format.js 
        format.json { render :json => @feedback, :status => :created, :location => @feedback }

      else
        format.html { render :action => "new" }
        format.json { render :json => @feedback.errors, :status => :unprocessable_entity }
      end
      
    end
    
  end

end
