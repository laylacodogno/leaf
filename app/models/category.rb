class Category < ApplicationRecord
  before_save :set_normalized_name

  def set_normalized_name
    self.normalized_name = self.name.parameterize
  end
end
