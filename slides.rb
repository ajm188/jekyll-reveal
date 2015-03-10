module Jekyll
  module Tags
    class SlideTag < Liquid::Block
      def initialize(tag_name, args, tokens)
        super
        @section_attributes = args
      end

      def render(context)
        site = context.registers[:site]
        converter = site.getConverterImpl(::Jekyll::Converters::Markdown)

        content = converter.convert(super(context))
        "<section #{@section_attributes}>#{content}</section>"
      end
    end
  end
end

Liquid::Template.register_tag('slide', Jekyll::Tags::SlideTag)
