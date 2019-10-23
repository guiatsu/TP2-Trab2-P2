module Frequency
    def word_freq(word_list)
        if(not word_list.is_a? Array)
            return []
        end
        
        word_freq = Hash.new
        word_freq.default = 0
        word_list.each do |x|
            x.each do |y|
                word_freq[y] +=1
            end
        end
        return word_freq

    end
end