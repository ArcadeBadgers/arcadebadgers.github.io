class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 560
          @height = 420
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
      "<a href=\"https://www.youtube.com/watch?v=#{@id}\">View on YouTube</a>"
#    "<iframe title=\"YouTube video player\" class=\"youtube-player\" type=\"text/html\" width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube-nocookie.com/embed/#{@id}\" frameborder=\"0\" allowFullScreen></iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end
