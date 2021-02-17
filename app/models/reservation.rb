class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :user
  
  
  before_create :estoque 
  def estoque
    if self.book.stock < 1
      throw(:abort)
    end
   self.book.update(stock: book.stock-1)

  end
  after_destroy :estoque_final 
  def estoque_final
    self.book.update(stock: book.stock+1)
  
  
  end

  
end

