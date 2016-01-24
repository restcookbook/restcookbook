require 'git'

module Jekyll
  class GitAuthors < Generator

    safe true
    priority :high

    def generate(site)
      posts = site.posts
      if Jekyll::VERSION >= '3.0.0'
        posts = posts.docs
      end

      posts.map! do |post|
        post.data["authors"] = post.data
        post
      end
    end
  end
end
