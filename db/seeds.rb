require 'faker'

55.times do 
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )  
end

posts = Post.all

101.times do
  Comment.create(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

