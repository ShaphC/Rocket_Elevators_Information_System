class LeadsController < ApplicationController
  # before_action :set_lead, only: %i[ show edit update destroy ]
  def index
    @leads = Lead.all
  end
  def show
    @lead = Lead.find(params(:lead))
    send_data(@lead.file_contents,
              type: @lead.content_type,
              filename: @lead.filename)
  end
  
  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      render 'pages/index.html.erb'
    end

    # respond_to do |format|
    #   if @lead.save
    #     format.html { redirect_to @pages, notice: "Lead was successfully created." }
    #     format.json { render :index, status: :created, location: @lead }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @lead.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /leads/1 or /leads/1.json
  # def update
  #   respond_to do |format|
  #     if @lead.update(lead_params)
  #       format.html { redirect_to @lead, notice: "Lead was successfully updated." }
  #       format.json { render :show, status: :ok, location: @lead }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @lead.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /leads/1 or /leads/1.json
  def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: "Lead was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:leads).permit(:full_name_of_the_contact, :company_name, :email, :phone, :project_name, :project_description, :department_in_charge_of_the_elevators, :message, :attached_file, :date_of_the_contact)
    end
end
