class TipoConta < ApplicationRecord




  validates_presence_of :codigo
  validates_presence_of :nome

  def to_s
    "#{codigo} - #{nome}"
  end
end
