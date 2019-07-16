class QueueController < ApplicationController
    before_action :check_guest_logged_in, only: [:guestQueue]
    before_action :check_mod_logged_in, only: [:modQueue]
    
    def modQueue
    end

    def guestQueue
        @initialPos = Guest.where(accessCode: Guest.find_by(id: session[:guest_id]).accessCode).size.to_s
    end

    private
        def check_guest_logged_in
            unless guest_logged_in?
                redirect_to home_url
            end
        end

        def check_mod_logged_in
            unless mod_logged_in?
                redirect_to home_url
            end
        end
end
