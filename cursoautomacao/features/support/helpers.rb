module Helpers

    def  delorean
        HTTParty.get("http://parodify.qaninja.com.br/helpers?email=fernando@yahoo.com")

    
    end

end