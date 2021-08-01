require 'rubygems'
require 'httparty'

#class StackExchange
    #include HTTParty
   #base_uri ' https://api.igdb.com/v4'

   # def initialize(service, page)
    #    @options = { query: {site: service}}
   # end
   #def questions
      #  self.class.get('/2.2/questions', @options)
   # end

  # def users 
    #    self.class.get('/2.2/users', @options)
    #end
#end

#Other

#stack_exchange = StackExchange.new('stackoverflow', 1)

#puts stack_exchange.questions
#puts stack_exchange.users

#Other
#base_uri 'https://xhostcom.site.strattic.io/wp-json/wp/v2/'    // wp posts

class XhostcomPosts
 include HTTParty
 base_uri   'https://jsonplaceholder.typicode.com/'

 def posts
    self.class.get('/posts')
 end
end

xhostcom_posts = XhostcomPosts.new
#puts xhostcom_posts.posts
xhostcom_posts.posts.each do |post|
    p "Title: #{post['title']} | Body: #{post['body']}"
end




#Others

#response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
#puts response.body
#puts response.code
#puts response.message
#puts response.headers.inspect