module TableGem
  class Railtie < Rails::Railtie
    initializer "table_gem.table_helpers" do
      ActionView::Base.send :include, TableHelpers
    end
  end
  module TableHelpers
    def table_for(array,options={},&block)
      # content_tag_string :table, capture(&block), options
      content_tag :table, options do
        array.map do |row|
          content_tag :tr do
            block.call row
          end
        end.join.html_safe
      end
    end
    def column(name,options={},&block)
      content_tag :td do
        name
      end
    end
  end
end