class ModeratorController < ApplicationController

    #just for showing the accessCode and password once the room is created
    def show
        @moderator = Moderator.find(params[:id])
    end
    
    def new
        @moderator = Moderator.new #this will be the argument required for the form which accepts the inputted password
    end

    def create
        @moderator = Moderator.new(moderator_params)
        @moderator.accessCode  = match_accessCode
        @moderator.password  = match_password
        if @moderator.save
            redirect_to @moderator
        else  
            render 'new' #start process over again
        end
    end

    private

        def match_accessCode
            while Moderator.exists?(accessCode: Access Code) do
                redirect_to @moderator
            end
            while Moderator.exists?(password: Password) do
                redirect_to @moderator
            end
            render 'new' 
        end

        def moderator_params
            params.require(:moderator).permit(:name)
            params.require(:moderator).permit(:accessCode)
            params.require(:moderator).permit(:password)
        end
end
