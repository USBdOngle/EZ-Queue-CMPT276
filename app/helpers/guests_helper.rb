module GuestsHelper
    def log_in_guest(guest)
        session[:guest_id] = guest.id
    end

    def current_guest
        if session[:guest_id]
            @current_guest ||= Guest.find_by(id: session[:guest_id])
        end
    end

    def guest_logged_in?
        !current_guest.nil?
    end
end
