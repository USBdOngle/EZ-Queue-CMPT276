module GuestsHelper
    
    def log_in(guest)
        session[:guest_id]=guest.id
    end

    def current_user
        if session[:guest_id]
            @current_user ||= Guest.find_by(id: session[:guest_id])
        end
    end

end
