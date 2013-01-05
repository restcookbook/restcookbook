module Jekyll
  class SortedCategoriesBuilder < Generator

    safe true
    priority :high

    def generate(site)
      site.config['sorted_categories'] = site.categories.map { |cat, posts|
        [ cat, cat, posts ] }.sort { |a,b| a[1] <=> b[1] }
    end

  end
end