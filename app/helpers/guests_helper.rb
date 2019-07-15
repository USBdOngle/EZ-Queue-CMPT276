module GuestsHelper
    def log_in(guest)
        session[:guest_id]=guest.id
    end

    def current_guest
        if @current_guest.nil?
            @current_guest ||= Guest.find_by(id: session[:guest_id])
        else
            @current_guest
        end
    end
end
