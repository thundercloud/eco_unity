class Article < ActiveRecord::Base
	has_and_belongs_to_many :tags, dependent: :destroy
	has_many :orders
end
