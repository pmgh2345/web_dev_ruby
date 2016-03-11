

class Book

    attr_reader :title

    def title= title

        @title = capitalize(title)

    end

    def capitalize(title)

        not_capitalized = %w(the a an and in of)

        capitalized = %w(i)

        words = title.split.map do |word|

            if capitalized.include?(word)

                word.capitalize

            elsif not_capitalized.include?(word)

                word

            else

                word.capitalize

            end

        end

        words[0] = words.first.capitalize

        words.join(" ")

    end

end


pmgh2345
9:14 PM On line 4, im not familiar with this type of method declaration- is the equal sign basically a way of setting a default value for the method?
cdouglass
9:29 PM @pmgh2345: no, it's making explicit that when you set title from outside, eg my_book.title= 'Great Expectations' you're not directly setting the title attribute but rather calling a setter method title=. (edited)
9:30
the fact that you can just as well write
my_book.title = 'Great Expectations' as though you were just setting an attribute rather than calling a method that (usually but not necessarily) happens to set that attribute is ruby being a bit magical.
9:31
syntactic sugar
9:33
!, ?, and = all get to be part of a method name though only as the last character


pmgh2345
12:54 AM hi @cdouglass , thank you for this explanation!
pmgh2345
12:59 AM when you differentiate between setting the title from the outside vs. calling a method, are you differentiating between your example of my_book.title = 'Great Expectations' vs. what a beginner like me might first think of for a method like this, namely my_book.title('Great Expectations'), where the book titles is an argument rather than something to be set with an equal sign?
pmgh2345
2:00 AM wait i think i get it- so on line 4, the 'title=' is a special type of syntax that ddesignates this method as a "setter method," and the second title written on line 4 is just the argument for the method. Do I have that right?
cdouglass
8:58 AM @pmgh2345: title= is not special syntax, just a naming convention for methods that set instance variables. Similar to the convention of ending predicate methods (eg instance_of?) with a question mark - no special meaning to Ruby, just a way to make things clearer to a human reader. The second "title" on line 4 is an ordinary argument for the method title=. The only thing that's special syntax is that Ruby will allow you to call the title= method with a space (title =) as though you were doing a normal assignment.
pmgh2345
8:41 PM Ah! Ok. I get it now. Thanks so much @cdouglass !
