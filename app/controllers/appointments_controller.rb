class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json

  def index
   @appointments = Appointment.where(archive: false)



  end


  # GET /appointments/1
  # GET /appointments/1.json
  def show
    @appointments = Appointment.find(params[:id])
  end

  def show1
    @appointments = Appointment.find(params[:id])
    respond_to do |format|
      format.js  {render layout: false}
  end

end




  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @all_workers = Worker.all.where(archive: false)
   @dock_active = Dock.where(available: true)
    @appointment_worker = @appointment.worker_appointments.build



  end

  # GET /appointments/1/edit
  def edit
  @all_workers = Worker.all.where(archive: false)
   @dock_active = Dock.where(available: true)
  @appointment = Appointment.find(params[:id])

 # @appointment_worker = @appointment.worker_appointments.build
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @all_workers = Worker.all.where(archive: false)
    @dock_active = Dock.where(available: true)
    @appointment = Appointment.new(appointment_params)
    params[:workers][:id].each do |worker|
if !worker.empty?
@appointment.worker_appointments.build(:worker_id => worker)
end
end

    respond_to do |format|

    if   @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    @all_workers = Worker.all.where(archive: false)
    @dock_active = Dock.where(available: true)
  # @appointment = Appointment.find(params[:id])
  #  @appointment.update_attributes(appointment_params)



    params[:workers][:id].each do |worker|
      if !worker.empty?
        @appointment.worker_appointments.destroy_all
      end
    end




    params[:workers][:id].each do |worker|
      if !worker.empty?
        @appointment.worker_appointments.build(:worker_id => worker)
end
end

    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    #@appointment.destroy

    @appointment = Appointment.find(params[:id])
    @appointment.update_attribute(:archive,  true)


    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully archived.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:start_date, :start_time, :dock_id, :vendor_id)
    end
end
