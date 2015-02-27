class Word < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('word LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
