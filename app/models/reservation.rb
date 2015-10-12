class Reservation < ActiveRecord::Base
  belongs_to :client
  belongs_to :origen, class_name: 'District', foreign_key: :origin_id
  belongs_to :destino, class_name: 'District', foreign_key: :destination_id
  
  validates :origin_id, presence: true
  validates :destination_id, presence: true
  validates :origin_street, presence: true
  validates :destination_street, presence: true
  
  def origin_name
    self.origen.name
  end

  def destination_name
    self.destino.name
  end
  
  def status
    Parameter.where(:value=> self.status_id, :entity_id=> 3).first
  end
  
end
