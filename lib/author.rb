class Author

  attr_accessor :name

  @@post_count = []

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

end
