def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase,number =2)
  new = phrase + " "
  newer = (new * (number-1)) + phrase
end

def start_of_word(phrase,num=0)
  array = phrase.split("")
  word = array[0,num]
  word.join
end

def first_word(phrase)
  array = phrase.split(" ")
  array[0]
end

def titleize(phrase)
  array=phrase.split(" ")
  new_array=[]
  blacklist = ["and","or", "over","the"]
  array.each do |n|
    if !new_array.empty? && blacklist.include?(n)
      new_array.push(n)
    else 
      n.capitalize!
      new_array.push(n)
    end
  end
  new_array.join(" ")
end



