dictionary = ["hell", "hello", "hi", "low", "help", "where", "hello"]
inputWord = "hello hellish I am going to and back where you found me"

def subString(inputWord, dictionary)
    inputWord = inputWord.split
    wordTracker = Hash.new(0)
    inputWord.each do |word|
        dictionary.select do |count|
            if word.include?(count)
                wordTracker[count] += 1
            end
        end
    end
    wordTracker
end

p subString(inputWord, dictionary)
