class Subcategory < ActiveRecord::Base
    validates_presence_of :title, :category_id
end
