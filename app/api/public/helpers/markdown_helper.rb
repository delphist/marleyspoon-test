# frozen_string_literal: true

require 'redcarpet/render_strip'

module Public
  module Helpers
    module MarkdownHelper
      def extract_markdown(value)
        Redcarpet::Markdown.new(Redcarpet::Render::StripDown).render(value)
      rescue StandardError
        ''
      end

      def convert_markdown(value)
        Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(value)
      end
    end
  end
end
