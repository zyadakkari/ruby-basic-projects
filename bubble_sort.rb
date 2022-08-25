inputArray = [3,1,4,4,6,7,2]

def bubbleSort(inputArray)
    n = 0
    # max repetitions needed to order is equal to length of array
    while n < inputArray.length
        n += 1
        # flag to break loop if no changes made in last loop
        orderChanged = false
        # loops through each index
        inputArray.each_index do |index|
            # finds the index of the next number
            nexNumIndex = index+1
            unless inputArray[nexNumIndex] == nil
                # switches the order if larger number comes first
                if inputArray[index] > inputArray[nexNumIndex]
                    varone = inputArray[index]
                    vartwo = inputArray[nexNumIndex]
                    inputArray[index] = vartwo
                    inputArray[nexNumIndex] = varone
                    orderChanged = true
                end
            end
        end
        p inputArray
        if orderChanged == false
            break
        end
    end
end


p bubbleSort(inputArray)
