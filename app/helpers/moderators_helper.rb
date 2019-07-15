module ModeratorsHelper

    def log_in(moderator)
        session[:moderator_id] = moderator.id
    end

    def current_mod
        if session[:moderator_id]
            @current_mod ||= Moderator.find_by(id: session[:moderator_id])
        end
    end
end

