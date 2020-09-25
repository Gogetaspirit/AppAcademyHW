#['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

#clever_octopus! step through array once!
def clever_octopus!(array)
    str = ""
    array.each do |ele|
        if ele.length > str.length 
            str = ele  
        end
    end 
    str
end

p clever_octopus!(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def dominant_octopus(array)
    # array.merge_sort()

end

def sluggish_octopus(array)
    array.each do |ele|
        longest_fish = false 
        array.each do |ele2|
            if ele2.length > ele1.length 
                longest_fish = true 
            end
        end
    end

end 

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end