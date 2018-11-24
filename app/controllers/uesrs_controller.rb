class UesrsController < ApplicationController
    def new
        @uesr = Uesr.new
    end
    
    def create
        @uesr = Uesr.new(uesr_params)
        if @uesr.save
            redirect_to uesr_path(@uesr.id)
        else
            render 'new'
        end
    end
    
    def show
        @uesr = Uesr.find(params[:id])
    end
    
    private
    def uesr_params
        params.require(:uesr).permit(:name, :email, :password,
                                     :password_confirmation)
    end
    
end
