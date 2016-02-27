def translate(phrase)
vowels = ["a","e","i","o","u"]
words = phrase.split(" ")
translated = []
x=0
words.each do |n|
  first = n.split("")
  first_translated= n.split("")
  first.each do |x|
    break if vowels.include?(x) #if first word starts with a non-vowel,
    if x == "q"
    first_translated.rotate!(2) #rotate 2x if letter is a q, and otherwise
    else
    first_translated.rotate! #rotate until vowel is reached.
    end
  end
    first_join = first_translated.join + "ay"      #join the array of letters back into a word, add "ay"
    translated.push(first_join) #and put it into the array of translated words
    puts first_translated
end
last = translated.pop
translated.map! { |y| y + " "}
translated.join + last
end
translate("banana")
