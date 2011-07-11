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

    def ssi_echo(name, options = {})
      "<!--# echo var='#{name}' #{"default='#{options[:default]}'" if options.key?(:default)} -->".html_safe
    end

  end

end

ActionView::Base.send :include, RailsSsi::Helpers
