class PatientsController < ApplicationController
    def index
        @all_patients = Patient.where(is_deleted: nil)
    end
    
    def new
        @all_patient = Patient.new
    end
    
    def create
        @all_patient = Patient.new(patient_params)
        @all_patient.user_id = current_user.id
        
        if @all_patient.save
          redirect_to patients_path, notice: 'Successfully created'
        else
          render :new
        end
        
    end

    
   def show
    @all_patient = Patient.find(params[:id])
    end

    def edit
        @all_patient = Patient.find(params[:id])
    end

    def update
        @all_patient = Patient.find(params[:id])

        if  @all_patient.update(patient_params)
                redirect_to  patients_path,notice: 'Updated successfully'
        else
                render :edit, status: :unprocessable_entity
        end
    end

    def delete_patient
        @all_patient = Patient.find(params[:id])

        if  @all_patient.update(is_deleted: true)
            redirect_to  patients_path, alert: 'Successfully Deleted'
         else
            render :edit, status: :unprocessable_entity
        end
    end

    def patient_chart
        @patients_by_date = Patient.group('DATE(created_at)').count
    end
    
    
    private
  
    def patient_params
    params.require(:patient).permit(:name ,:age ,:mobile,:gender,:address,:description,:user_id)
    end


end
