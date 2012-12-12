module Jekyll
  class SortedCategoriesBuilder < Generator

    safe true
    priority :high

    def generate(site)
      site.config['sorted_categories'] = site.categories.map { |cat, posts|
        [ cat, posts.size, posts ] }.sort { |a,b| b[1] <=> a[1] }
    end

  end
end