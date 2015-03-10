module Jekyll
  module Tags
    class SlideTag < Liquid::Block
      def render(context)
        site = context.registers[:site]
        converter = site.getConverterImpl(::Jekyll::Converters::Markdown)

        content = coverter.convert(super(context))
        "<section>#{content}</section>"
      end
    end
  end
end

Liquid::Template.register_tag('slide', Jekyll::Tags::SlideTag)
