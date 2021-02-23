class QuoteController < ApplicationController
    
    def index
    end

    def create
        #Requesting data from form - quote.html.erb , :occpFloor, ,:numHour
        quote = params.require(:quote).permit(:name,:email,:phone,:bType,:numApart,:numFloor,:numBase,:numBusi,:numPark,:numCage,:occpFloor,:numHour,:numCorp,
                                                :product,:numElev,:unitP,:totalP,:instalP,:finalP)        
        
        #puts(params)
        #Saving informations that are inside quote at the table Quote        
        Quote.create quote
    end
end



