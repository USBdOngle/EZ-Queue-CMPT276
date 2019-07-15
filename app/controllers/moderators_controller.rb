class ModeratorsController < ApplicationController
    
    def create
        @mod = Moderator.new(mod_params)
        @guest = Guest.new ##need to create a new mod in case we get redirected back to join - guests/join requires it for form

        if !Room.exists?(@mod.accessCode)
            @mod.errors.add(:accessCode, message: "Cannot find access code.")
            render 'pages/join'
        elsif Room.find(@mod.accessCode).password != @mod.virtual_password
            @mod.errors.add(:virtual_password, message: "Password is not correct.")
            render 'pages/join'
        elsif !@mod.save
            render 'pages/join'
        else
            log_in_mod @mod
            redirect_to mod_url
        end
    end

    private

        def mod_params
            params.require(:moderator).permit(:name, :accessCode, :virtual_password)
        end
end
