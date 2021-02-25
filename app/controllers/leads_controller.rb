class LeadsController < ApplicationController
  # def show
  #   @lead = Lead.find(params[:id])
  # end

  # def index
  #   @leads = Lead.all
  # end



  def new
    # @lead = Lead.new
    render 'pages/index.html.erb'
  end

 
  
  # def acceptable_file
  #   return unless attached_file.attached?
      
  #       unless attached_file.byte_size <= 10.megabyte
  #         errors.add(:attached_file, "is too big")
  #       end

  #       acceptable_types = ["image/jpeg", "image/png", "filename/docx", "filename/pdf"]
  #         unless acceptable_types.include?(attached_file.content_type)
  #           errors.add(:attached_file, "must be a JPEG, PNG, docx or pdf")
  #         end
  #   end
  # end
  


  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)
    # @lead.attached_file.attach(params[:attached_file])
    attachment = params["attachment"]
    @lead.attached_file = attachment
    @lead.save!



    # if @lead.save
    #   render 'pages/index.html.erb' 
    # end

    
   
    if attachment == nil
      puts "this is nil, tough luck"
      if not nil 
          @lead.file = attachment.read
          @lead.attached_file = attachment.original_attached_file
      end
    end

    if @lead.save!
        
        redirect_back fallback_location: root_path, notice: "Thank you!!!Your message has been sent"
      else
        render :action => "new"
        
    end
  end
  
  # def destroy
  #   @lead = Photo.find(params[:id])
  #   @lead.destroyy
  #   redirect_back fallback_location: root_path
  # end
 
    def lead_params
      params.require(:leads).permit(:full_name_of_the_contact, :company_name, :email, :phone, :project_name, :project_description, :department_in_charge_of_the_elevators, :message, :attached_file, :date_of_the_contact)
    end

end

   
