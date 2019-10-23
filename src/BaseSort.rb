module Sort
    def sort(word_list)
        word_list.sort_by do |key, value| 
            value
        end.reverse.to_h
    end
end