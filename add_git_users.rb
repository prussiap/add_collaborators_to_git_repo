require 'octokit'

login = "login"
password = "password"
your_repo = 'https://github.com/MycroftAI/mycroft'
username_file = "sample_name.txt"

text = File.open(username_file).read
names = text.split
client = Octokit::Client.new(:login => login, :password => password)

names.each do |name|
  client.add_collaborator(your_repo, name)
  puts "Added username: #{name}"
end
