class Pet < ApplicationRecord
  def cuddle!
    self.cuddle_count += 1
  end
end
