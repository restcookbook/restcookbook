module Jekyll
  class StatusCodeConverter < Converter
    safe true

    priority :low

    def matches(ext)
      ext =~ /html/i
    end 

    def output_ext(ext)
      ".html"
    end

    def convert(content)
        content.gsub! /\[(\d{3})\]/, "<a class=\"http_code\" href=\"http://httpstatus.es/\\1\">\\1</a></span>";
        content.gsub! /\[([A-Z]{3,})\]/, "<span class=\"http_method\">\\1</span>";
        content
    end
  end
end