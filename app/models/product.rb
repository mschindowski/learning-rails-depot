class Product < ActiveRecord::Base
  default_scope order('title')

  validates :title, :description, :image_url, :presence => true
  #validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01, :message => "Should be a number greather or equal a cent, like 12.34"
  validates :title, :uniqueness => true
  validates :title, :length => {:minimum => 10}
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end
