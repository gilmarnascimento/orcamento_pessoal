class TipoConta < ApplicationRecord




  validates_presence_of :codigo
  validates_presence_of :nome
  validates_presence_of :descricao

  def to_s
    "#{codigo} - #{nome}"
  end
end
