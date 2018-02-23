User.create!(first_name: "Ryan", last_name: "Stapleton", email: "test@test.com", password: "1", password_confirmation: "1", roles: "site_admin")
User.create!(first_name: "Jimmy", last_name: "Hendrix", email: "test1@test.com", password: "1", password_confirmation: "1")

puts "1 site admin created"
puts "1 user created"

10.times do |post|
  Post.create!(title: "Post #{post+1}", body: "content content content content content content", user_id: 1)
end

puts "10 posts created by #{User.find(1).first_name} #{User.find(1).last_name}"

3.times do |post|
  Post.create!(title: "Post #{post+1}", body: "content content content content content content", user_id: 2)
end

puts "3 posts created by #{User.find(2).first_name} #{User.find(2).last_name}"
