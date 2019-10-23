module Normalize
    def normalize(word_list)
        if(not word_list.is_a? Array)
            return []
        end
        word_list.map! do |x|
            y = x.split(" ") 
            y.select! do |z|
                ((z =~ /[^A-Za-z\s\. -]/) == nil)
            end
            x = y
        end


    end



end