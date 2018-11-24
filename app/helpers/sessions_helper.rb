module SessionsHelper
    def current_uesr
        @current_uesr ||=Uesr.find_by(id: session[:uesr_id])
    end
    
    def logged_in?
        current_uesr.present?
    end
    
end
