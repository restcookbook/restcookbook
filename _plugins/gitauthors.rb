require 'git'

module Jekyll
  class GitAuthors < Generator

    safe true
    priority :high

    def generate(site)
      site.posts.map! do |post|
        post.data["authors"] = post.data
        post
      end
    end
  end
end
