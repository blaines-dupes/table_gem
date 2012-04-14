module TableGem
  class Railtie < Rails::Railtie
    initializer "table_gem.table_helpers" do
      ActionView::Base.send :include, TableHelpers
    end
  end
  module TableHelpers
    def table_for(array,options={},&block)
      puts array
      content_tag :table, options do
        content_tag :thead do
          content_tag :tr do
            "hello world"
          end
        end
        array.each do |item|
          block.call(item)
        end
      end
    end
    def column(name,options={},&block)
      puts "column - #{name}"
      "column - #{name}"
    end
  end
end