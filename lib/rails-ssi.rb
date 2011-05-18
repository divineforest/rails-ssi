module RailsSsi

  module Helpers

    def ssi_datetime(format)
      raw "<!--#config timefmt='#{format}' --><!--#echo var='DATE_LOCAL' -->"
    end

    def ssi_if(expression)
      raw "<!--#if expr='#{expression}' -->"
    end

    def ssi_else
      raw "<!--#else -->"
    end

    def ssi_end
      raw "<!--#endif -->"
    end

    def ssi_include(path)
      raw "<!--# include virtual='#{path}' -->"
    end

  end

end

ActionView::Base.send :include, RailsSsi::Helpers
