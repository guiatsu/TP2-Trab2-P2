require './src/BaseInput'
module Stop_Word
    include Txt
    def remove_stop_words(word_list)
        if(not word_list.is_a? Array)
            return []
        end
        stop_words = read_file(false, "StopWord.txt")
        if(stop_words.empty?)
            return word_list
        end
        word_list.map! do |x|
            y = x
            y.select! do |z|
                not(stop_words.include?(z+"\r"))
            end
            x = y
        end
        return word_list
    end
end

