def splitSentence
    puts "Please enter a sentence to encode: "
    sentence = gets.chomp
    sentence.downcase.split.map {|word| word.split("")}
end

#  outputs  sentence split into arrays of letters represented by their numbers
def mapSentenceToKey(splitSentence)
    letterArray = ("a".."z").map {|char| char}
    # takes each array
    codedArray = []
    splitSentence.each do |word|
        # takes each letter in array and maps to number
        codedWord = word.map {|letter| letter = letterArray.index(letter)}
        codedArray << codedWord
    end
    codedArray
end

def transformCodedArray(mapSentenceToKey)
    puts "By how many letters would you like your code to shift down? "
    shiftFactor = gets.to_i
    newCodedArray = []
    mapSentenceToKey.each do |word|
        transformedCodedWord = word.map do |num|
            num += shiftFactor
            if num > 25
                num = 0 + (num - 26)
            end
            num
        end
        newCodedArray << transformedCodedWord
    end
    newCodedArray
end

def translateCodedArray(transformCodedArray)
    letterArray = ("a".."z").map {|char| char}
    translatedArray = []
    transformCodedArray.each do |word|
        translatedWord = word.map {|num| num = letterArray[num]}
        translatedArray << translatedWord.join
    end
    translatedArray.join(" ")
end


p translateCodedArray(transformCodedArray(mapSentenceToKey(splitSentence())))
