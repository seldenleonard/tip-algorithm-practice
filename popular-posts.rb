# https://trello.com/c/rNKGqi7V/80-popular-posts

# INSTRUCTIONS
# Given an array of hashes that represent a list of social media posts, return a new array that only contains the posts that have at least 1000 likes.

# Input: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# Output: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

# Activity

# STEPS
# Define a method that accepts an array of hashes
# Define an empty array
# Using a while loop, iterate through the array, evaluating the likes within each hash
  # Using an if statement, either enter the hash value into the empty array depending on whether it has a minimum of 1000 likes
# Return new array (of hashes)

# SOLUTION 1 - Correct - Using While Loop
# def popular_posts(posts)
#   pop_posts = []
#   i = 0
#   while i < posts.length
#     pop_posts << posts[i] if posts[i][:likes] >= 1000
#     i += 1
#   end
#   pop_posts
# end

# SOLUTION 2 - Correct - Using Each Loop
# def popular_posts(posts)
#   pop_posts = []
#   posts.each do |post|
#     pop_posts << post if post[:likes] >= 1000
#   end
#   pop_posts
# end

# SOLUTION 3 - Correct - Using Select Function
# def popular_posts(posts)
#   posts.select do |post|
#     post if post[:likes] >= 1000
#   end
# end

# SOLUTION 4 - Correct - Using Select Function Single Line
def popular_posts(posts)
  posts.select{|post| post if post[:likes] >= 1000}
end

p popular_posts([
  {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
  {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
  {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
  ])