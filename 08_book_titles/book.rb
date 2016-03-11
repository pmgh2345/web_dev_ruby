class Book
  attr_accessor :title
  def title= title
    @title = capitalize(title)
  end
  def capitalize(phrase)
    array=phrase.split(" ")
    new_array=[]
    blacklist = ["and","or", "over","the", "in", "of", "a", "an"]
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
end
