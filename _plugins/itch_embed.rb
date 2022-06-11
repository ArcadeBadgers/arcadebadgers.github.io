#	"<iframe frameborder=\"0\" src=\"https://itch.io/embed/#{@id}?dark=true&amp;linkback=true\" width=\"#{@width}\" height=\"#{@height}\"></iframe>"
class ItchIO < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $3.nil? then
          @width = 522
          @height = 167
      else
          @width = $3.to_i
          @height = $4.to_i
      end
    else
      raise "No itch.io ID provided in the \"itch\" tag"
    end
  end

  def render(context)
    "<a href=\"https://arcadebadgers.itch.io/#{@id}\">Get it from itch.io</a>"
  end

  Liquid::Template.register_tag "itch", self
end
