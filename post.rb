class Post

  attr_accessor :title, :url, :points, :item_id, :comments_file

  def initalize (document)
    @title = document.search('.title > a:first-child').inner_text
    @url = document.search('.title > a').map { |link| link['href'] }
    @points = document.search('.subtext > span').inner_text
    @item_id = document.search('.subtext > a:nth-child(2)').inner_text
    @comments_array = []
    @comments_file = document.search('.comment > font:first-child').map { |font| font.inner_text}
  end

  def comments
    @comments_file.each do |x| 
      new_comment = Comment.new(x)
      @comments_array << new_comment  
    end
  end

  def add_comment(comment)
    @comments_array << Comment.new(user_comment)
  end

  def print
     @comments_array.each do |each_comment|
       p each_comment.comment_text
      end
    end 

end