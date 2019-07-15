class QueueController < ApplicationController
    before_action :check_guest_logged_in, only: [:guestQueue]
    before_action :check_mod_logged_in, only: [:modQueue]
    
    def modQueue
    end

    def guestQueue
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
