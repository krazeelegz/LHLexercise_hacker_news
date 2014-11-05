require 'rubygems'
require 'nokogiri'
require 'open-uri'
# require 'resolv-replace'
require './post'
require './comment'

scrapped_webpage = Nokogiri::HTML(open("https://news.ycombinator.com/item?id=8561080"))

hackernews_post = Post.new(scrapped_webpage)

# .hackernews_post.comments

#user_comment ="I really like pop corn "
#hackernews_post.add_comment_method(user_comment)

hackernews_post.Post.print

