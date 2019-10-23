require './src/BaseInput'
require './src/BaseStopWord'
require './src/BaseNormalize'
require './src/BaseFrequency'
require './src/BaseSort'
include Txt
include Stop_Word
include Normalize
include Frequency
include Sort
word_list = read_file(true, "")
word_list = normalize(word_list)
word_list = remove_stop_words(word_list)
word_list = word_freq(word_list)
word_list = sort(word_list)
word_list.each do | x, y |
    puts x + " " + y.to_s
end