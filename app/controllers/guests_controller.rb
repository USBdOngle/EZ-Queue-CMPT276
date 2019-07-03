class GuestsController < ApplicationController

    #just for showing the accessCode and password once the room is created
    def show
        @guest = Guest.find(params[:id])
    end
    
    def new
        @guest = Guest.new #this will be the argument required for the form which accepts the inputted password
    end

    def create
        @guest = Guest.new(guest_params)
        @guest.accessCode  = match_accessCode
        if @guest.save
            redirect_to @guest
        else  
            render 'new' #start process over again
        end
    end

    private

        def match_accessCode
            while Guest.exists?(accessCode: Access Code) do
                redirect_to @guest
            end
            render 'new' 
        end

        def guest_params
            params.require(:guest).permit(:accessCode)
        end
end
