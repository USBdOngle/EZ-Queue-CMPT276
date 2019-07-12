module ModeratorsHelper

    def log_in(moderator)
        session[:moderator_id]=moderator
    end

    def current_user
        if session[:moderator_id]
            @current_user ||= Moderator.find_by(id: session[:moderator_id])
        end
    end
end

