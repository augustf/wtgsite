module BlogPostsHelper

  def snippet(blog_post)
  	#truncate blog post with ellipsis at 50 full words
    wordcount = 50  
    blog_post.split[0..(wordcount-1)].join(" ") + (blog_post.split.size > wordcount ? "..." : "")
  end
  
  def truncated?(text)
  	#check if post has been truncated by looking for ellipsis
    if text[-3,3] == "..."
    	return true
    else
      return false
    end
  end
  
end
