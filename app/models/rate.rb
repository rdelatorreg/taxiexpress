class Rate < ActiveRecord::Base
  belongs_to :origen, class_name: 'District', foreign_key: :origin_id
  belongs_to :destino, class_name: 'District', foreign_key: :destination_id

  validates :origin_id, presence: true
  validates :destination_id, presence: true
  validates :price, presence: true

  validates :destination_id, uniqueness: { scope: [:origin_id] }

  def origin_name
    self.origen.name
  end

  def destination_name
    self.destino.name
  end
end
