people = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio", "Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "David Spivey", "Max Davis", "Devin Mandelbaum", "Afton Downey", "Jordan Fox", "Rebecca Gahart", "Gary Wong", "Hodges Glenn", "Everett Golden", "Christopher Graff", "Alana Hanson", "LeeAnne Hawley", "Sabri helal", "Thomas Hwang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Andrew s Kim", "Joseph Kim", "Michal Klimek", "Nathan knockeart", "Brigitte Kozena", "Donald Lang", "Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Tyler McKenzie", "Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O'Neal", "Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild", "Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings", "Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman", "Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli"]

# PSEUDOCODE
# Input: container of strings of names
# Output: different accountability groups
# Steps: create containers for accountability groups
#   go through each person in accountability group container
#   generate random number for number of accountability groups
#     IF accountability group number matches AND container has less than 5 already
#     add person to acct group
#     remove person from people container
#     END
#     display accountability groups accountability groups

# def accountability_groups(members)
#   ag1 = []
#   ag2 = []
#   ag3 = []
#   ag4 = []
#   ag5 = []
#   ag6 = []
#   ag7 = []
#   ag8 = []
#   ag9 = []
#   ag10 = []
#   ag11 = []
#   ag12 = []
#   ag13 = []
#   ag14 = []
#   members.each do |person|
#     which_group = 1 + rand(14)
#     if which_group == 1 && ag1.length < 5
#       ag1 << person
#     elsif (which_group == 2 || which_group == 1) && ag2.length < 5
#       ag2 << person
#     elsif (which_group == 3 || which_group == 2 || which_group == 1) && ag3.length < 5
#       ag3 << person
#     elsif (which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag4.length < 5
#       ag4 << person
#     elsif (which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag5.length < 5
#       ag5 << person
#     elsif (which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag6.length < 5
#       ag6 << person
#     elsif (which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag7.length < 5
#       ag7 << person
#     elsif (which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag8.length < 5
#       ag8 << person
#     elsif (which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag9.length < 5
#       ag9 << person
#     elsif (which_group == 10 || which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag10.length < 5
#       ag10 << person
#     elsif (which_group == 11 || which_group == 10 || which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag11.length < 5
#       ag11 << person
#     elsif (which_group == 12 || which_group == 11 || which_group == 10 || which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag12.length < 5
#       ag12 << person
#     elsif (which_group == 13 || which_group == 12 || which_group == 11 || which_group == 10 || which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag13.length < 5
#       ag13 << person
#     elsif (which_group == 14 || which_group == 13 || which_group == 12 || which_group == 11 || which_group == 10 || which_group == 9 || which_group == 8 || which_group == 7 || which_group == 6 || which_group == 5 || which_group == 4 || which_group == 3 || which_group == 2 || which_group == 1) && ag14.length < 5
#       ag14 << person
#     end
#   end
#   print ag1
#   print ag2
#   print ag3
#   print ag4
#   print ag5
#   print ag6
#   print ag7
#   print ag8
#   print ag9
#   print ag10
#   print ag11
#   print ag12
#   print ag13
#   print ag14
# end

def accountability_groups(members)
  counter = 1
  accountability_groups = {}
  while members.length > 0
    if members.length > 9
      accountability_groups[counter] = members.sample(5)
    else 
      accountability_groups[counter] = members.sample(3)
    end
    accountability_groups[counter].each { |x| members.delete(x)}
    counter +=1
  end
  p accountability_groups
end



accountability_groups(people)

=begin

- What was the most interesting and most difficult part of this challenge?
  The most interesting part was playing around with different ruby methods to figure out what I could do. The most difficult part for me was rying to find out what data structure to use. Originally I worked by making it separate arrays, and as you can see from my initial solution, it was a bit mess. 

- Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Yes, I'm definitely getting better at writing the steps in a way that I can actually turn into code. 

- Was your approach for automating this task a good solution? What could have made it even better?
  My first solution wasn't good, but when I refactored and turned it into a hash structure it became a lot better. If I had to redo it I'd probably work in a little more logic to deal with other sizes of original structures. It would work with most here, but not sure it'd work with all of them. 

- What data structure did you decide to store the accountability groups in and why?
  I originally used an array, but realized how inefficient it was to create each individual array. It was much easier to create one empty hash at the beginning and then push new arrays into the hash as I went. This also made it easier to access the entire list. 

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I learned mostly about the sample and delete methods. I had used the delete method before but hadn't used it within an each iterator, so I had to dive into irb to test that out. The sample method was really nice
  
=end
