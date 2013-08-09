class Article < ActiveRecord::Base
	has_many :pictures, :as => :attachable, :dependent => :destroy
	accepts_nested_attributes_for :pictures, :allow_destroy => true
end
